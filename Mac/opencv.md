
## M1 编译 opencv.jar

## brew 
- `brew edit opencv`
- 修改`-DBUILD_opencv_java=OFF`为`-DBUILD_opencv_java=ON`
- 添加
```shell
-DOPENCV_JAVA_TARGET_VERSION=1.8
-DJAVA_INCLUDE_PATH=/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home/include
-DJAVA_AWT_LIBRARY=/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home/jre/lib/libawt.dylib
-DJAVA_JVM_LIBRARY=/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home/jre/lib/libjvm.dylib
````
- `brew install --build-from-source opencv`
- jar：`/opt/homebrew/Cellar/opencv/4.5.4_1/share/java/opencv4/opencv-454.jar`
- dylib : `/opt/homebrew/Cellar/opencv/4.5.4_1/share/java/opencv4/libopencv_java454.dylib`
- 复制dylib 到 `/Library/Java/Extensions/` 否则加载失败：System.loadLibrary(Core.NATIVE_LIBRARY_NAME);




## LINUX 本地编译

- `brew install wget`
- `wget -O opencv.zip https://github.com/opencv/opencv/archive/4.5.5.zip`
- `unzip opencv.zip`
- `wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/4.5.5.zip`
- `unzip opencv_contrib.zip`
- `cd opencv-4.5.5`
- `mkdir build && cd build`
- ant
```shell
cmake -D CMAKE_SYSTEM_PROCESSOR=amd64 \
-D CMAKE_OSX_ARCHITECTURES=amd64 \
-D WITH_OPENJPEG=OFF \
-D WITH_IPP=OFF \
-D CMAKE_BUILD_TYPE=RELEASE \
-D CMAKE_INSTALL_PREFIX=/usr/local/opencv \
-D JAVA_INCLUDE_PATH=/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home/include \
-D JAVA_AWT_LIBRARY=/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home/jre/lib/amd64/libawt.so \
-D JAVA_JVM_LIBRARY=/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home/jre/lib/amd64/server/libjvm.so \
-D BUILD_opencv_python2=OFF \
-D BUILD_opencv_java=ON \
-D INSTALL_PYTHON_EXAMPLES=OFF \
-D INSTALL_C_EXAMPLES=OFF \
-D OPENCV_EXTRA_MODULES_PATH=/Users/zhukai/Downloads/opencv-4.5.1/opencv_contrib-4.5.1/modules/ \
-D OPENCV_ENABLE_NONFREE=ON \
-D ENABLE_PRECOMPILED_HEADERS=OFF \
-D BUILD_EXAMPLES=ON ..
```

- `make -j8`
- `sudo make install`
