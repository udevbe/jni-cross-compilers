set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_VERSION 1)

set(cross_triple i686-pc-linux-gnu)
set(cross_root /usr/toolchain)
set(jvm_arch i386)

set(CMAKE_C_COMPILER ${cross_root}/bin/${cross_triple}-gcc)
set(CMAKE_CXX_COMPILER ${cross_root}/bin/${cross_triple}-g++)

set(CMAKE_SYSROOT ${cross_root}/${cross_triple}/sysroot)
set(CMAKE_PREFIX_PATH ${CMAKE_SYSROOT}/usr)
set(CMAKE_FIND_ROOT_PATH ${CMAKE_SYSROOT})
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

set(JAVA_AWT_LIBRARY ${CMAKE_PREFIX_PATH}/lib/jvm/openjdk-1.8.0-internal/jre/lib/${jvm_arch}/libjawt.so)
set(JAVA_JVM_LIBRARY ${CMAKE_PREFIX_PATH}/lib/jvm/openjdk-1.8.0-internal/jre/lib/${jvm_arch}/server/libjvm.so)
set(JAVA_INCLUDE_PATH ${CMAKE_PREFIX_PATH}/lib/jvm/openjdk-1.8.0-internal/include/)
set(JAVA_INCLUDE_PATH2 ${CMAKE_PREFIX_PATH}/lib/jvm/openjdk-1.8.0-internal/include/linux/)
