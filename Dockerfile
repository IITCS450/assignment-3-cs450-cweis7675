FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive

# Install the required build tools and x86 QEMU emulator
RUN apt-get update && apt-get install -y \
    build-essential \
    gdb \
    gcc-multilib \
    qemu-system-x86 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /xv6