ARG IMAGE_NAME=ubuntu:20.04
FROM ${IMAGE_NAME}

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y build-essential git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && \
    apt-get install -y libgstreamer1.0-0 \
    libgstreamer1.0-dev \
    libgstreamer-plugins-base1.0-* \
    libgstreamer-plugins-good1.0-* \
    libgstreamer-plugins-bad1.0-* \
    gstreamer1.0-plugins-base \
    gstreamer1.0-plugins-good \
    gstreamer1.0-plugins-bad \
    gstreamer1.0-plugins-ugly \
    gstreamer1.0-libav \
    gstreamer1.0-doc \
    gstreamer1.0-tools \
    gstreamer1.0-x \
    gstreamer1.0-alsa \
    gstreamer1.0-pulseaudio \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN pkg-config --cflags --libs gstreamer-1.0