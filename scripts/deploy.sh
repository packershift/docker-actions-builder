docker run --rm \
  -v $(pwd):/tmp \
  -e LOCAL=true \
  -e PUID=$(id -u) -e PGID=$(id -g) \
  ghcr.io/packershift/ci-builder:latest && \
rm -rf .gitlab-external