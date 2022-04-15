# website-devenv-with-jekyll

Local verification environment for **github pages** with Jekyll.

docker hub: <https://hub.docker.com/r/bigrd/website-devenv-with-jekyll>

```sh
# Change host path as needed# Change host path as needed
SRC="$(pwd)/docs:/srv/src:rw"

# Output destination for website content (if required)
DST="$(pwd)/.out:/srv/jekyll:rw"

# run docker
docker run --rm -it \
  -p="4000:4000" \
  -p="35729:35729" \
  -v=$SRC \
  -v=$DST \
  bigrd/website-devenv-with-jekyll \
  jekyll serve --host 0.0.0.0 -s /srv/src -d /srv/jekyll --verbose --trace --watch --livereload --force_polling --incremental
```
