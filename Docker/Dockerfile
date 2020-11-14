FROM cortesja/scons

MAINTAINER Jorge A. Cortés <contact@jorgeacortes.com>
LABEL description="Image with arm-none-eabi toolchain for compilling with scons"

ENV DEBIAN_FRONTEND=noninteractive

# Temporary directory
  RUN mkdir -p /arm/temp \
    && cd /arm/temp \
# Download gcc-arm-none-eabi toolchain for compiling arm
    && wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2020q2/gcc-arm-none-eabi-9-2020-q2-update-x86_64-linux.tar.bz2  \
    && mkdir /arm/lib \
    && tar xjf gcc-arm-none-eabi-9-2020-q2-update-x86_64-linux.tar.bz2 -C /arm/lib \
# Delete not needed packages and folders
    && rm -rf /arm/temp \
# Create working directory for sharing with repository
    && mkdir /ws

WORKDIR /ws

# Define paths
ENV ARM_TOOLCHAIN=/arm/lib/gcc-arm-none-eabi-9-2020-q2-update
