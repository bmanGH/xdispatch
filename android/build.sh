#!/bin/sh
ToolchainName=arm-linux-androideabi-4.8
ABI=armeabi-v7a
API=android-9
STL=gnustl_static
cmake -DCMAKE_TOOLCHAIN_FILE=`dirname $0`/../build/android.toolchain.cmake -DANDROID_TOOLCHAIN_NAME=$ToolchainName -DANDROID_ABI=$ABI -DANDROID_STL=$STL -DANDROID_NATIVE_API_LEVEL=$API -DLIBRARY_OUTPUT_PATH_ROOT=. `dirname $0`/..
for f in `find . -name "*.make" -o -name "*.txt" -o -name "*.cmake"`; do
	mv $f $f.1
	sed -e "s/-Darmv7-a=1//g" -e "s/\.0\.8\.0\~devel//g" -e "s/-Werror//g" $f.1 > $f
	rm $f.1
done
make VERBOSE=1
