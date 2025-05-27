@echo off
echo Starting Chirpy blog in Docker...

docker run --rm -p 4000:4000 -v "%cd%:/srv/jekyll" chirpy-blog bundle exec jekyll serve --host 0.0.0.0 --force_polling

pause
