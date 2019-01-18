#!/bin/bash

if [ "x$1" = "x" ]; then
	echo "use $0 [arm|x86]"
	exit 1
fi

DIR=/tmp/ndk-$1
rm -rf $DIR

$ANDROID_NDK/build/tools/make-standalone-toolchain.sh \
  --arch=$1 --platform=android-15 --install-dir=$DIR
