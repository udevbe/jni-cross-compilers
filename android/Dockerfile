FROM debian:stretch
MAINTAINER Erik De Rijcke "derijcke.erik@gmail.com"

RUN apt-get update
RUN apt-get -y install \
    unzip \
    curl \
    file

ENV CROSS_ROOT /usr/toolchain
ENV ANDROID_NDK_REVISION 11b

WORKDIR ${CROSS_ROOT}/ndk
RUN curl -O http://dl.google.com/android/repository/android-ndk-r${ANDROID_NDK_REVISION}-linux-x86_64.zip && \
    unzip android-ndk-r${ANDROID_NDK_REVISION}-linux-x86_64.zip && \
    rm android-ndk-r${ANDROID_NDK_REVISION}-linux-x86_64.zip
