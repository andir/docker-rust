FROM debian:stable
MAINTAINER andreas@rammhold.de

ENV RUSTUP_TOOLCHAIN="nightly"

# Install required debian packages
RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        autoconf \
        automake \
        dpkg-dev \
        file \
        g++ \
        gcc \
        libc6-dev \
        libssl-dev \
        make \
        patch \
        libtool \
        curl \
        ca-certificates \
        ; \
        rm -rf /var/lib/apt/lists/*; \
        rm -rf /var/cache/apt/archive/*.deb;

RUN     curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain ${RUSTUP_TOOLCHAIN}