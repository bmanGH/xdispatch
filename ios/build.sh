#!/bin/sh

BUILD_TYPE=Release

# build iOS lib
PLATFORM=OS
cmake -GXcode -DFORCE_NATIVE_DISPATCH_H=1 -DCMAKE_BUILD_TYPE=$BUILD_TYPE -DCMAKE_TOOLCHAIN_FILE=`dirname $0`/../build/iOS.cmake -DIOS_PLATFORM=$PLATFORM `dirname $0`/..


# build simulator lib
PLATFORM=SIMULATOR
cmake -GXcode -DFORCE_NATIVE_DISPATCH_H=1 -DCMAKE_BUILD_TYPE=$BUILD_TYPE -DCMAKE_TOOLCHAIN_FILE=`dirname $0`/../build/iOS.cmake -DIOS_PLATFORM=$PLATFORM `dirname $0`/..


# build universal lib
# lipo –create Release-iphoneos/libiphone.a Debig-iphonesimulator/libiphone.a –output libiphone.a
