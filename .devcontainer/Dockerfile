FROM ubuntu:24.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential cmake ninja-build \
    gdb valgrind \
    clang clang-format clang-tidy \
    git ca-certificates less \
 && rm -rf /var/lib/apt/lists/*

# Ubuntu 24.04 already ships a non-root user "ubuntu" (UID 1000)
USER ubuntu
