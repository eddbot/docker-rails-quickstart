#!/bin/bash
set -e

# Remove any pre-existing server pids for Rails.
rm -f /depleters/tmp/pids/server.pid

# Then exec the containers main process (what we set in the CMD block in the Dockerfile)
exec "$@"