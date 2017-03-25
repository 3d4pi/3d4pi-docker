all: build

build:
	cd debian-stretch-dev && docker build --no-cache -t debian:stretch-dev .
	cd opencv-build && docker build --no-cache -t opencv-build .
	cd gnoproj && ./build.sh
