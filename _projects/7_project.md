---
layout: page
title: Automated Perspective Correction
description: Fully automated perspective correction pipeline for scanned documents and cards using computer vision techniques
importance: 7
github: https://github.com/sraddhanjali/Automated-Perspective-Correction-for-Scanned-Documents-and-Cards
category: Computer Vision
---

<style>
  /* Purple color scheme - consistent across all projects */
  h2, h3, h4, h5, h6, h7 {
    background: linear-gradient(135deg, #9D4EDD 0%, #B509AC 100%);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
    color: #9D4EDD;
    font-weight: 700;
  }
  
  h5, h6, h7 {
    color: #B509AC;
    font-weight: 600;
  }
  
  /* Fallback for browsers that don't support background-clip */
  @supports not (-webkit-background-clip: text) {
    h2, h3, h4 {
      color: #9D4EDD;
    }
    h5, h6, h7 {
      color: #B509AC;
    }
  }
  
  /* Card-like styling for content divs */
  .row {
    margin-bottom: 2rem;
  }
  
  .row .col-sm {
    background: linear-gradient(135deg, rgba(157, 78, 221, 0.05) 0%, rgba(181, 9, 172, 0.05) 100%);
    border: 1px solid rgba(157, 78, 221, 0.15);
    border-radius: 12px;
    padding: 1.5rem;
    box-shadow: 0 4px 6px rgba(157, 78, 221, 0.1), 0 2px 4px rgba(181, 9, 172, 0.08);
    transition: transform 0.2s ease, box-shadow 0.2s ease;
    backdrop-filter: blur(10px);
  }
  
  .row .col-sm:hover {
    transform: translateY(-2px);
    box-shadow: 0 8px 12px rgba(157, 78, 221, 0.15), 0 4px 8px rgba(181, 9, 172, 0.12);
  }
  
  .row .col-sm ul {
    margin-bottom: 0;
  }
  
  .row .col-sm li {
    margin-bottom: 0.5rem;
  }
</style>

---
## Overview
---

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        <ul>
            <li>Modern scanning applications, such as <strong>CamScanner</strong> or built-in iPad scanning tools, employ <strong>perspective correction</strong> to automatically detect and straighten skewed documents. This project implements a <strong>fully automated perspective correction pipeline</strong> using computer vision techniques, eliminating the need for manual corner point selection.</li>
            <li><strong>Key Features:</strong> Automated edge detection and contour extraction, Quadrilateral shape detection and validation, Perspective transformation via homography, Configurable parameters via YAML configuration.</li>
        </ul>
    </div>
<div class="col-sm mt-3 mt-md-0">
     {% include figure.html path="assets/img/card.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
     {% include figure.html path="assets/img/result.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>


    
</div>

To run:
```bash
make install
make run  # uses default card.jpg as input
```

---

## Pipeline Architecture
---

The system follows a structured pipeline from image input to corrected output:

1. <strong>Image Preprocessing</strong> – Load and convert to grayscale
2. <strong>Edge Detection</strong> – Canny edge detection with configurable thresholds
3. <strong>Contour Extraction</strong> – Find contours and compute convex hulls
4. <strong>Intersection Detection</strong> – Calculate line intersections forming quadrilateral corners
5. <strong>Shape Validation</strong> – Verify detected points form valid quadrilateral using <code>approxPolyDP</code>
6. <strong>Corner Sorting</strong> – Order corners (top-left, top-right, bottom-right, bottom-left) using centroid
7. <strong>Perspective Transformation</strong> – Apply homography matrix to correct perspective
8. <strong>Image Warping</strong> – Transform image to aligned rectangle

---

## Core Implementation
---

##### 1. Shape Descriptor Class

The <code>ShapeDescriptor</code> dataclass manages coordinate storage, centroid computation, and corner detection:

```python
@dataclass
class ShapeDescriptor:
    coord: List[List[float]] = field(default_factory=list)
    size: int = 0
    centroidx: float = 0.0
    centroidy: float = 0.0
    sumx: float = 0.0
    sumy: float = 0.0
    corners: List[Tuple[float, float]] = field(default_factory=list)
    shape_type: ImageObjects = field(default=ImageObjects.QUADRILATERAL)
    
    def calculate_centroid(self):
        if not self.coord:
            raise ValueError("No coordinates available")
        x = self.sumx / self.size
        y = self.sumy / self.size
        return [x, y]
    
    def append_coord(self, x: float, y: float):
        self.coord.append([x, y])
        self.sumx += x
        self.sumy += y
        self.size += 1
```

<strong>Key Methods:</strong>
- <code>append_coord()</code>: Accumulates coordinates and maintains running sums for efficient centroid calculation
- <code>calculate_centroid()</code>: Computes geometric center for corner sorting
- <code>find_intersection()</code>: Calculates intersection point of two line segments using line-line intersection formula

##### 2. Corner Detection and Sorting

The <code>calculate_corners()</code> method identifies and orders quadrilateral corners:

```python
def calculate_corners(self, centroid: Tuple) -> list:
    """Calculate top-right, top-left, bottom-right, bottom-left points."""
    top_points = []
    bottom_points = []
    cx, cy = centroid[0], centroid[1]
    
    # Separate points above and below centroid
    for coord in self.coord:
        x, y = coord[0][0], coord[0][1]
        if y < cy:
            top_points.append(coord)
        else:
            bottom_points.append(coord)
    
    # Sort corners: top-left, top-right, bottom-right, bottom-left
    top_left = min(top_points)
    top_right = max(top_points)
    bottom_left = min(bottom_points)
    bottom_right = max(bottom_points)
    self.corners = [top_left, top_right, bottom_right, bottom_left]
    
    # Calculate destination rectangle dimensions
    xmin = min([each_arr[0][0] for each_arr in self.corners])
    ymin = min([each_arr[0][1] for each_arr in self.corners])
    xmax = max([each_arr[0][0] for each_arr in self.corners])
    ymax = max([each_arr[0][1] for each_arr in self.corners])
    width = abs(int(xmax - xmin))
    height = abs(int(ymax - ymin))
    
    dest = np.array(
        [[0, 0], [width, 0], [width, height], [0, height]], 
        dtype=np.float32
    )
    return self.corners, dest, width, height
```

This method uses the centroid to distinguish top and bottom edges, then sorts corners to match the destination rectangle format required for perspective transformation.

##### 3. Shape Validation

The system validates detected shapes using OpenCV's <code>approxPolyDP</code>:

```python
def shape_approx_check(
    self, shape_check: ImageObjects.QUADRILATERAL, epsilon_factor: float = 0.1
) -> bool:
    """Check if points form expected shape using Douglas-Peucker approximation."""
    coords_array = np.array(self.coord, dtype=np.float32).reshape(self.size, 1, 2)
    perimeter = cv2.arcLength(coords_array, True)
    approx = cv2.approxPolyDP(coords_array, epsilon_factor * perimeter, True)
    self.coord = approx.tolist()  # Update to simplified coordinates
    return len(approx) == self.shape_type.value
```

The <code>epsilon_factor</code> parameter controls approximation accuracy—smaller values yield more precise shapes but may miss valid quadrilaterals with slight irregularities.

##### 4. Perspective Transformation Class

The <code>Perspective</code> class orchestrates the entire correction pipeline:

```python
@dataclass
class Perspective:
    source: str = field(metadata={"desc": "Full path of image to transform."})
    destination: np.ndarray = field(init=False)
    
    def __post_init__(self):
        """Initialize image and set destination points."""
        self.img = cv2.imread(self.source, 0)  # Read as grayscale
        height, width = self.img.shape[:2]
        self.destination = np.asarray(
            [[0, 0], [width, 0], [width, height], [0, height]], 
            dtype=np.float32
        )
```

<strong>Edge Detection:</strong>
```python
def find_edges(self, lower_thresh: int, upper_thresh: int) -> np.ndarray:
    """Detect edges using Canny algorithm after binary thresholding."""
    _, binary = cv2.threshold(self.img, 127, 255, cv2.THRESH_BINARY)
    return cv2.Canny(binary, lower_thresh, upper_thresh)
```

<strong>Contour Extraction:</strong>
```python
def find_contours(self, contour_area: int, edges: np.ndarray) -> ShapeDescriptor:
    """Find contours and extract intersection points from convex hulls."""
    hull_arr = []
    contours, hierarchy = cv2.findContours(
        edges, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE
    )
    
    # Filter by area and hierarchy (external contours only)
    for i, cnt in enumerate(contours):
        if cv2.contourArea(cnt) > contour_area and hierarchy[0, i, 3] == -1:
            hull_arr.append(cv2.convexHull(cnt, returnPoints=True))
    
    if not hull_arr:
        raise ValueError("No valid contours found.")
    
    # Calculate intersections between consecutive hull edges
    coord_obj = ShapeDescriptor()
    for hull in hull_arr:
        for j in range(len(hull) - 3):
            intersection = coord_obj.find_intersection(
                hull[j][0], hull[j + 1][0], 
                hull[j + 2][0], hull[j + 3][0]
            )
            if intersection:
                coord_obj.append_coord(*intersection)
    return coord_obj
```

<strong>Perspective Transformation:</strong>
```python
def transform(self, corners: List[Tuple[float, float]], dest, w, h) -> np.ndarray:
    """Apply perspective transformation using homography matrix."""
    corners_array = np.array(corners, dtype=np.float32)
    transformation_matrix = cv2.getPerspectiveTransform(corners_array, dest)
    return cv2.warpPerspective(self.img, transformation_matrix, (w, h))
```

##### 5. Main Pipeline

The <code>find_transformed_image()</code> method orchestrates the complete pipeline:

```python
def find_transformed_image(self, config):
    """Execute full perspective correction pipeline from config."""
    lower, upper = (
        config["canny_thresholds"]["lower"],
        config["canny_thresholds"]["upper"],
    )
    area = config["min_contour_area"]
    shape, epsil = (
        config["shape_detection"]["target_shape"],
        config["shape_detection"]["epsilon_factor"],
    )
    
    # Pipeline execution
    edges = self.find_edges(lower, upper)
    c = self.find_contours(area, edges)
    
    if c.shape_approx_check(shape, epsil):  # Validate quadrilateral
        centroid = c.calculate_centroid()
        corners, dest, w, h = c.calculate_corners(centroid)
        transformed_img = self.transform(corners, dest, w, h)
        cv2.imwrite("result.jpg", transformed_img)
```

##### 6. Configuration Management

The system uses YAML configuration for parameter tuning:

```python
def load_config(config_path: str) -> dict:
    with open(config_path, "r") as file:
        return yaml.safe_load(file)
```

Example <code>config.yaml</code>:
```yaml
canny_thresholds:
  lower: 50
  upper: 150
min_contour_area: 1000
shape_detection:
  target_shape: 4  # QUADRILATERAL
  epsilon_factor: 0.1
```

---

## Usage Example
---

```python
if __name__ == "__main__":
    import os
    
    config_path = "config.yaml"
    config = load_config(config_path)
    file_path = "card.jpg"
    
    persp = Perspective(source=os.path.join(os.path.dirname(__file__), file_path))
    transformed_img = persp.find_transformed_image(config)
```

---

## Technical Highlights
---

<strong>Key Algorithms:</strong>
- <strong>Canny Edge Detection</strong>: Multi-stage algorithm for robust edge extraction
- <strong>Convex Hull</strong>: Simplifies contour representation while preserving shape
- <strong>Douglas-Peucker Approximation</strong>: Reduces polygon complexity for shape validation
- <strong>Homography Transformation</strong>: 3×3 matrix mapping for perspective correction

<strong>Design Patterns:</strong>
- Dataclass-based architecture for clean data structures
- Separation of concerns: <code>ShapeDescriptor</code> handles geometry, <code>Perspective</code> handles transformation
- Configurable parameters via YAML for easy tuning

---

## Applications
---

This automated perspective correction system enables:

- <strong>Document Scanning</strong>: Automated alignment for OCR preprocessing
- <strong>Card Recognition</strong>: ID card and business card digitization
- <strong>AR Registration</strong>: Marker detection and alignment
- <strong>Robotic Vision</strong>: Object pose estimation and alignment

---

## Future Enhancements
---

- Deep learning-based quadrilateral detection for improved robustness
- Multi-shape support (pentagons, hexagons) via <code>ImageObjects</code> enum
- Real-time processing pipeline for video streams
- Adaptive threshold selection based on image characteristics
