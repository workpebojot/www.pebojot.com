alias done="git commit -m 'Update 0.7.0' && git push origin main && JEKYLL_ENV=production bundle exec jekyll build && cd _site && git add . && git commit -m 'Update 0.7.0' && git push deploy master && cd .. && bundle exec jekyll serve --port 3000 --livereload"

alias serve="bundle exec jekyll serve --port 3000 --livereload"
