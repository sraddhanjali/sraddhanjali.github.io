#!/usr/bin/env bash
set -euo pipefail

# Optional: keep lockfile if you want deterministic builds.
# If you delete it, bundler may resolve different versions each run.
# rm -f Gemfile.lock

docker run --rm \
  -v "$PWD:/srv/jekyll" \
  -p "8080:8080" \
  -it amirpourmand/al-folio \
  bash -lc '
    bundle install &&
    bundle exec jekyll serve --watch --port=8081 --host=0.0.0.0
  '
