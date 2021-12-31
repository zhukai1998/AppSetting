
## M1 编译 opencv.jar

- `brew install wget`
- `wget -O opencv.zip https://github.com/opencv/opencv/archive/4.5.0.zip`
- `unzip opencv.zip`
- `wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/4.5.0.zip`
- `unzip opencv_contrib.zip`
- `cd opencv-4.5.0`
- `mkdir build && cd build`
- 
```shell
cmake -DCMAKE_SYSTEM_PROCESSOR=arm64 \
-DCMAKE_OSX_ARCHITECTURES=arm64 \
-DWITH_OPENJPEG=OFF \
-DWITH_IPP=OFF \
-D CMAKE_BUILD_TYPE=RELEASE \
-D CMAKE_INSTALL_PREFIX=/usr/local/opencv \
-D JAVA_INCLUDE_PATH=/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home/include \
-D JAVA_AWT_LIBRARY=/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home/jre/lib/amd64/libawt.so \
-D JAVA_JVM_LIBRARY=/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home/jre/lib/arm/server/libjvm.so \
-D BUILD_opencv_python2=OFF \
-D BUILD_opencv_java=ON \
-D INSTALL_PYTHON_EXAMPLES=OFF \
-D INSTALL_C_EXAMPLES=OFF \
-D OPENCV_EXTRA_MODULES_PATH=/Users/zhukai/Downloads/opencv_contrib-4.5.4/modules/ \
-D OPENCV_ENABLE_NONFREE=ON \
-D BUILD_EXAMPLES=ON ..
```

- `make -j8`
- `sudo make install`
