ARG IMAGE_NAME=ubuntu:20.04
FROM ${IMAGE_NAME}

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y build-essential git

RUN apt-get update && \
    apt-get install -y libgstreamer* \
    gstreamer1.0-plugins-base \
    gstreamer1.0-plugins-good \
    gstreamer1.0-plugins-bad \
    gstreamer1.0-plugins-ugly \
    gstreamer1.0-libav \
    gstreamer1.0-doc \
    gstreamer1.0-tools \
    gstreamer1.0-x \
    gstreamer1.0-alsa \
    gstreamer1.0-pulseaudio

RUN pkg-config --cflags --libs gstreamer-1.0