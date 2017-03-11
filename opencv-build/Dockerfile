FROM debian:stretch-dev

RUN apt-get build-dep -y --force-yes \
      libopencv-dev

ARG branch=master

ARG user=user
RUN useradd --create-home --shell /bin/bash $user
USER $user

WORKDIR /home/$user

RUN mkdir src \
 && cd src \
 && git clone --recursive -b $branch --single-branch https://github.com/opencv/opencv.git \
 && git clone --recursive -b $branch --single-branch https://github.com/opencv/opencv_contrib.git \
 && cd opencv \
 && mkdir build \
 && cd build \
 && cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules/ .. \
 && make -j $(nproc)

USER root
RUN cd src/opencv/build \
 && make install \
 && ldconfig
