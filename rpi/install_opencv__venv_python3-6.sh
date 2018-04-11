cmake \
    -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/home/joshuabeard/.virtualenvs/code/lib/python3.6/site-packages \
    -D BUILD_EXAMPLES=ON \
    -D INSTALL_C_EXAMPLES=ON \
    -D INSTALL_PYTHON_EXAMPLES=ON \
    -D PYTHON3_PACKAGES_PATH=/home/joshuabeard/.virtualenvs/code/lib/python3.6/site-packages \
    -D PYTHON3_LIBRARIES=/home/joshuabeard/.python3.6.4/lib/libpython3.6m.so \
    -D PYTHON3_EXECUTABLE=/home/joshuabeard/.virtualenvs/code/bin/python3.6 \
    -D DEFAULT_PYTHON_EXECUTABLE=/home/joshuabeard/.virtualenvs/code/bin/python3.6 \
    -D BUILD_opencv_java=OFF \
    -D WITH_MATLAB=OFF \
    -D OPENCV_EXTRA_MODULES_PATH=/home/joshuabeard/code/opencv_contrib/modules \
..
