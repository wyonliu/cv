#!/bin/bash
# 部署 CV 到 Cloudflare Pages (wyonliu.pages.dev/cv)
set -e
mkdir -p deploy/cv
cp index.html cv.md .nojekyll deploy/cv/
echo '<!DOCTYPE html><html><head><meta http-equiv="refresh" content="0;url=/cv/"></head><body>Redirecting...</body></html>' > deploy/index.html
export PATH="$HOME/.nvm/versions/node/v25.1.0/bin:$PATH"
npx wrangler pages deploy deploy --project-name=wyonliu
