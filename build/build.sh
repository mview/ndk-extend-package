if [ -n "$DIR" ]; then
cd $DIR
~/android-ndk-r10e/ndk-build V=$DEBUG ANDROID_VER=$VER NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=./Android.mk NDK_APPLICATION_MK=./Application.mk -j8
fi
