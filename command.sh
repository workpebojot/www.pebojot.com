#!/usr/bin/env sh

git push origin main && JEKYLL_ENV=production bundle exec jekyll build && cd .. && cp -r www.pebojot.com/_site/* site && cd site && git add . && git commit -m 'Update' && git push deploy master && cd .. && cd www.pebojot.com && bundle exec jekyll serve --port 3000
