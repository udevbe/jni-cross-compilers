set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_VERSION 1)

set(cross_triple arm-linux-gnueabi)
set(cross_root /usr/toolchain)
set(sys_root ${cross_root}/${cross_triple})

set(CMAKE_C_COMPILER ${cross_root}/bin/${cross_triple}-gcc)
set(CMAKE_CXX_COMPILER ${cross_root}/bin/${cross_triple}-g++)

set(CMAKE_FIND_ROOT_PATH ${cross_root}/${cross_triple})
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

set(JAVA_AWT_LIBRARY ${sys_root}/jvm/openjdk-1.8.0-internal/jre/lib/arm/)
set(JAVA_JVM_LIBRARY ${sys_root}/jvm/openjdk-1.8.0-internal/jre/lib/arm/)
set(JAVA_INCLUDE_PATH ${sys_root}/jvm/openjdk-1.8.0-internal/include/)
set(JAVA_INCLUDE_PATH2 ${sys_root}/jvm/openjdk-1.8.0-internal/include/linux/)
set(JAVA_AWT_INCLUDE_PATH ${sys_root}/jvm/openjdk-1.8.0-internal/include/)
