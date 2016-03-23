FROM zubzub/cross-compilers/android
MAINTAINER Erik De Rijcke "derijcke.erik@gmail.com"

ENV CROSS_TRIPLE arm-linux-androideabi
ENV SYS_ROOT ${CROSS_ROOT}/sysroot

WORKDIR ${CROSS_ROOT}/ndk/android-ndk-r${ANDROID_NDK_REVISION}/build/tools
RUN chmod +x make-standalone-toolchain.sh && \
    ./make-standalone-toolchain.sh \
          --toolchain=${CROSS_TRIPLE}-4.9 \
          --arch=arm \
          --ndk-dir=${CROSS_ROOT}/ndk/android-ndk-r${ANDROID_NDK_REVISION} \
          --platform=android-14 \
          --install-dir=${CROSS_ROOT}/
