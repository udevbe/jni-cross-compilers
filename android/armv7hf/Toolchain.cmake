set(CMAKE_SYSTEM_NAME Android)
set(CMAKE_SYSTEM_VERSION 1)

set(cross_triple arm-linux-androideabi)
set(cross_root /usr/toolchain)

set(CMAKE_C_COMPILER ${cross_root}/bin/${cross_triple}-gcc)
set(CMAKE_CXX_COMPILER ${cross_root}/bin/${cross_triple}-g++)

set(CMAKE_FIND_ROOT_PATH ${cross_root}/${cross_triple})
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_SYSROOT ${cross_root}/sysroot)
