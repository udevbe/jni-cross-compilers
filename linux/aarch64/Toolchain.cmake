set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_VERSION 1)

set(cross_triple aarch64-linux-gnu)
set(cross_root /usr/toolchain)

set(CMAKE_C_COMPILER ${cross_root}/bin/${cross_triple}-gcc)
set(CMAKE_CXX_COMPILER ${cross_root}/bin/${cross_triple}-g++)

set(CMAKE_SYSROOT ${cross_root}/${cross_triple}/libc)
set(CMAKE_PREFIX_PATH ${CMAKE_SYSROOT}/usr)
set(CMAKE_FIND_ROOT_PATH ${CMAKE_SYSROOT})
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

#set(JAVA_AWT_LIBRARY ${CMAKE_PREFIX_PATH}/lib/jvm/openjdk-1.8.0-internal/jre/lib/aarch64/libawt.so)
#set(JAVA_JVM_LIBRARY ${CMAKE_PREFIX_PATH}/lib/jvm/openjdk-1.8.0-internal/jre/lib/aarch64/server/libjvm.so)
#set(JAVA_INCLUDE_PATH ${CMAKE_PREFIX_PATH}/lib/jvm/openjdk-1.8.0-internal/include/)
#set(JAVA_INCLUDE_PATH2 ${CMAKE_PREFIX_PATH}/lib/jvm/openjdk-1.8.0-internal/include/linux/)
#set(JAVA_AWT_INCLUDE_PATH ${CMAKE_PREFIX_PATH}/lib/jvm/openjdk-1.8.0-internal/include/)
