The offical release NDK version is limited. It can't build a lot of AOSP modules.
This is extend package for NDK.With it, NDK can build popluar modules, 
for example, linker, skia, OpenGL samples, LibVA samples. 

For build linker,a special patch for NDK build eviroment to support 
LOCAL_FORCE_STATIC_EXECUTABLE should be used. 
Detail see force_static_execute.diff.
