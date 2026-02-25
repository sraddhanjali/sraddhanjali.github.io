---
layout: page
title: Harmony
description: AI-Powered Farcaster Mini App for healthier social media conversations
img: assets/img/harmony.png
importance: 6
github: https://github.com/sraddhanjali
category: LLM
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
        
            <li> I architected and deployed <strong>Harmony</strong>, a production-grade Farcaster Mini App designed to foster healthier social media conversations. </li>
            <li> The system analyzes user casts in real-time for hate speech and bias using a sophisticated, cost-optimized AI pipeline. </li>
            <li>It features a native Farcaster bot (`@harmony`), a "Happy Friday" leaderboard for positive community members, and a full web interface for deep text analysis (coming soon).</li>
        </ul>
    </div>

    <div class="col-sm mt-3 mt-md-0">
     {% include figure.html path="assets/img/projects/6.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

---
## System Architecture
---

##### 1. Unified Cloudflare Deployment

*   **Frontend Client:** Next.js 15 (App Router) deployed to Cloudflare Workers using OpenNext. This enables server-side rendering (SSR) and static generation directly at the edge, ensuring global low latency.
*   **Backend Intelligence:** Cloudflare Workers (Serverless V8 Isolate) acting as the API Gateway. It handles webhook events, REST endpoints, and orchestrates the AI analysis pipeline.
*   **Infrastructure:** The entire stack leverages Cloudflare's ecosystem, including KV for caching, R2 for storage, and Durable Objects for distributed rate limiting.

##### 2. AI Analysis Pipeline

*   **Primary Logic:** A multi-stage classifier (Waterfall pattern).
*   **Models:** Google Gemini 1.5 Flash, HuggingFace Inference API, and local rule-based heuristics.

---

## Key Decisions & Rationale
---

##### 1. Unified Serverless Architecture (Full-Stack Cloudflare)

**Context:** Managing separate providers for frontend (e.g., Vercel) and backend (e.g., AWS/Cloudflare) adds latency and operational complexity.

**Decision:** I deployed both the Next.js frontend and the API backend to Cloudflare Workers.

**Why:**

*   **Performance:** Using opennextjs-cloudflare, the React frontend renders at the Edge, right alongside the backend logic, minimizing network hops.
*   **Consistency:** A single platform simplifies secrets management, deployment pipelines (wrangler), and observability.
*   **Cost:** Leveraging Cloudflare's unified serverless pricing model reduced infrastructure overhead compared to splitting traffic across vendors.

##### 2. Cost-Optimized "Waterfall" AI Pipeline

**Context:** Running a pure LLM (like GPT-4 or Gemini Pro) on every social media post is prohibitively expensive and slow.

**Decision:** I implemented a three-stage fallback mechanism:

1.  **Stage 1 (Local):** A zero-cost, rule-based `PreFilter` runs instantly on the Edge to catch obvious slurs or spam.
2.  **Stage 2 (Specialized Model):** If the text passes Stage 1, it's sent to a lightweight **HuggingFace** classification model (DistilBERT-based) optimized for speed and low cost.
3.  **Stage 3 (LLM Fallback):** Only ambiguous or complex edge cases trigger the LLM models choosing what is available switching between **Google Gemini** API call or **OpenAI** API call.

**Outcome:** This reduced operational costs by ~90% compared to a "LLM-first" approach while maintaining high accuracy for nuanced harassment.

##### 3. Protocol Abstraction via Neynar

**Context:** Building directly on raw Farcaster hubs requires significant infrastructure maintenance (managing Hubble instances).

**Decision:** I integrated **Neynar** as a middleware layer.

**Why:** It drastically simplified the read/write operations for the Farcaster protocol. Instead of managing hub sync state, I could focus on the application logic (Hate Speech detection) and rely on Neynar's high-availability APIs for fetching casts and user profiles.

##### 4. Background Processing for Community Engagement (Coming soon)

**Context:** Real-time analysis is reactive. I wanted a proactive feature to reward positive behavior.

**Decision:** I utilized **Cron Triggers** in Cloudflare Workers to implement the "Happy Friday" leaderboard.

**Why:** This decoupled heavy data processing (scanning 24h of trending casts) from the user-facing API. Every Friday at 1 PM ET, the worker automatically wakes up, processes the dataset, scores users based on sentiment, and publishes the results, creating a consistent engagement loop without manual intervention.

---

## Outcome

A preliminary MVP was successfully deployed to production, handling real-time webhook events from Farcaster. The "Waterfall" AI pipeline proved effective in filtering toxicity while keeping costs manageable, and the serverless architecture has required zero maintenance since deployment. Further features like leaderboards and webhook **@harmony** is coming soon.
