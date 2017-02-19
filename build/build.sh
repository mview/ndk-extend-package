if [ -n "$DIR" ]; then
    cd $DIR
    NDKBUILD_PATH=`which ndk-build`
    if [ $? -eq 0 ]; then
	NDK_HOME=`dirname $NDKBUILD_PATH`
	ndk-build NDK_HOME=$NDK_HOME V=$DEBUG ANDROID_VER=$VER NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=./Android.mk NDK_APPLICATION_MK=./Application.mk -j8
    else
	echo "add NDK path to search path, e.g. export PAHT=/NDK path:\$PATH"
    fi
fi
