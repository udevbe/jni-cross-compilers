FROM debian:stretch
MAINTAINER Erik De Rijcke "derijcke.erik@gmail.com"

#gather all needed systems tools for doing OpenJDK cross compilation for a linux target
RUN apt-get update && apt-get -y install \
    libtool \
    texinfo \
    gettext \
    byacc \
    mercurial \
    cpio \
    unzip \
    zip \
    libcups2-dev \
    git \
    curl \
    cmake \
    autoconf \
    automake \
    pkg-config \
    build-essential \
    bash \
    libltdl-dev \
    ca-certificates \
    openjdk-8-jdk && \
    apt-get clean && \
    apt-get autoclean && \
    apt-get autoremove \

#gather all cross dep sources

#libffi (jdk dep)
&& mkdir -p /usr/src/libffi \
&& cd /usr/src/libffi \
&& curl -L https://github.com/atgreen/libffi/archive/v3.2.1.tar.gz | tar xvz -C /usr/src/libffi --strip-components 1 \

#freetype (jkd dep)
&& mkdir -p /usr/src/freetype \
&& cd /usr/src/freetype \
&& curl -L http://download.savannah.gnu.org/releases/freetype/freetype-2.6.tar.gz | tar xvz -C /usr/src/freetype --strip-components 1 \

#alsa (jdk dep)
&& mkdir -p /usr/src/alsa \
&& cd /usr/src/alsa \
&& curl -L ftp://ftp.alsa-project.org/pub/lib/alsa-lib-1.1.0.tar.bz2 | tar xvj -C /usr/src/alsa --strip-components 1 \

#zlib (X dep)
&& mkdir -p /usr/src/zlib \
&& cd /usr/src/zlib \
&& curl -L http://zlib.net/zlib-1.2.8.tar.gz | tar xvz -C /usr/src/zlib --strip-components 1 \

#libpng (X dep)
&& mkdir -p /usr/src/png \
&& cd /usr/src/png \
&& curl -L ftp://ftp.simplesystems.org/pub/libpng/png/src/libpng12/libpng-1.2.56.tar.gz | tar xvz -C /usr/src/png --strip-components 1 \

#expat (X dep)
&& mkdir -p /usr/src/expat \
&& cd /usr/src/expat \
&& curl -L http://ncu.dl.sourceforge.net/project/expat/expat/2.1.0/expat-2.1.0.tar.gz | tar xvz -C /usr/src/expat --strip-components 1 \

#openssl (X dep)
&& mkdir -p /usr/src/openssl \
&& cd /usr/src/openssl \
&& curl -L http://www.openssl.org/source/openssl-0.9.8h.tar.gz | tar xvz -C /usr/src/openssl --strip-components 1 \

#X (jdk dep)
&& mkdir -p /usr/src \
&& cd /usr/src \
&& git clone git://anongit.freedesktop.org/xorg/util/modular /usr/src/xorg \
&& hg clone http://hg.openjdk.java.net/jdk8u/jdk8u /usr/src/jdk

COPY xorg-modules /usr/src/xorg/