FROM zubnix/jni-cross-compilers:linux-source
MAINTAINER Erik De Rijcke "derijcke.erik@gmail.com"

#build libffi native (jdk native dep)
WORKDIR /usr/src/libffi
RUN ./autogen.sh && \
    ./configure && \
    make && \
    make install && \
    cd /usr/src && \
    rm -rf /usr/src/libffi

#build freetype native (jkd native dep)
WORKDIR /usr/src/freetype
RUN cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr/local/ \
          -DBUILD_SHARED_LIBS:BOOL=true . && \
    make && \
    make install && \
    cd /usr/src && \
    rm -rf /usr/src/freetype

#build alsa native (jdk native dep)
WORKDIR /usr/src/alsa
RUN ./configure && \
    make && \
    make install && \
    cd /usr/src && \
    rm -rf /usr/src/alsa

#build zlib native (X native dep)
WORKDIR /usr/src/zlib
RUN ./configure && \
    make && \
    make install && \
    cd /usr/src && \
    rm -rf /usr/src/zlib

#build libpng native (X native dep)
WORKDIR /usr/src/png
RUN ./configure && \
    make && \
    make install && \
    cd /usr/src && \
    rm -rf /usr/src/png

#build expat native (X native dep)
WORKDIR /usr/src/expat
RUN ./configure && \
    make && \
    make install && \
    cd /usr/src && \
    rm -rf /usr/src/expat

#build openssl native (X native dep)
WORKDIR /usr/src/openssl
RUN ./Configure dist && \
    make && \
    make install_sw && \
    cd /usr/src && \
    rm -rf /usr/src/openssl

#build X native (jdk native dep)
WORKDIR /usr/src/xorg
    #we only build the minimal required modules needed by the jdk
RUN ./build.sh --clone --modfile xorg-modules && \
    cd /usr/src && \
    rm -rf /usr/src/xorg

#build openjdk native
WORKDIR /usr/src/jdk
RUN chmod +x get_source.sh && \
    sync && \
    ./get_source.sh

#BUG. --disable-headful is ignored during build (X still required for compiling and linking) and simply disables any
#X checks during config, --with-x include is also ignored during build so we have to cross compile X into the sysroot.
#http://mail.openjdk.java.net/pipermail/build-dev/2012-March/005710.html

#BUG. --with-cups-include is only used during configuration and is not propagated to make when compiling
#Therefore we just link the cups headers into our sysroot so they can be resolved
RUN chmod +x configure && \
    LIBFFI_CFLAGS=$(pkg-config libffi --cflags) \
    ./configure --with-tools-dir=/ \
                --disable-freetype-bundling \
                --with-freetype-include=/usr/local/include/freetype2 \
                --with-freetype-lib=/usr/local/lib \
                --with-cups-include=/usr/include/cups/ \
                --with-jvm-variants=zero \
                --disable-debug-symbols && \
    make images CONF=linux-arm-normal-zero-release && \
    make install && \
    cd /usr && \
    rm -rf /usr/src

RUN apt-get remove -y mercurial unzip zip git curl ca-certificates && \
    apt-get clean && \
    apt-get autoclean && \
    apt-get autoremove -y