export NDK=/Users/tfn/Library/Android/sdk/ndk-bundle
export PREBUILT=$NDK/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64
export PLATFORM=$NDK/platforms/android-16/arch-arm
export PREFIX=/Users/tfn/AndroidStudioProjects/FFmpeg264InMac/ffmpeg/android_x264/h264
export X264DIR=/Users/tfn/AndroidStudioProjects/FFmpeg264InMac/ffmpeg/android_x264/x264-snapshot-20161106-2245-stable

$X264DIR/configure --prefix=$PREFIX \
--enable-static \
--disable-shared \
--enable-pic \
--disable-asm \
--disable-cli \
--host=arm-linux \
--cross-prefix=$PREBUILT/bin/arm-linux-androideabi- \
--sysroot=$PLATFORM

make
make install
