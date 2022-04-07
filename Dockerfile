FROM ghcr.io/linuxserver/baseimage-alpine:3.13

# Set version and label
ARG BUILD_DATE
ARG VERSION

LABEL org.opencontainers.imaage.vendor="PackerShift.io" \
      org.opencontainers.image.build-version="PackerShift.io  version:- ${VERSION} Build-date:- ${BUILD_DATE}" \
      org.opencontainers.image.description="Docker image used to develop CI build logic for templating CI pipelines." \
      org.opencontainers.image.authors="jbanimineni@packershift.io"

RUN \
  echo "**** Install build packages ****" && \
  apk add --no-cache --upgrade \
    ansible \
    bash

COPY . /ansible

ENTRYPOINT [ "/ansible/entrypoint.sh" ]
