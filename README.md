# gibsondanield.github.io

Personal site, built by GitHub Pages' native Jekyll (legacy branch build from `main`).

- Blog posts: `blog/_posts/YYYY-MM-DD-slug.html` (front matter: `title`, `description`, `code`, `preface`); images go in `blog/<slug>/`. Served at `/blog/<slug>/`.
- Layouts in `_layouts/`, shared styles in `assets/css/site.css`.
- Files without front matter (interactive tools, sketches) are copied through untouched.

Local preview (same `github-pages` gem as production, via Docker):

```
docker run --rm -it -p 4000:4000 -v "$PWD":/site -v jekyll-gems:/gems -e BUNDLE_PATH=/gems -w /site ruby:3.3-slim \
  bash -c 'apt-get update -qq && apt-get install -y -qq build-essential git libssl-dev zlib1g-dev >/dev/null && bundle install && bundle exec jekyll serve --host 0.0.0.0'
```
