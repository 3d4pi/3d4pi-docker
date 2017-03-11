all: build

build:
	cd debian-stretch-dev && docker build -t debian:stretch-dev .
	cd opencv-build && docker build -t opencv-build .
	cd gnoproj && ./build.sh
