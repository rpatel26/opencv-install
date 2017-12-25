# Makefile to install opencv 

path=~

all:
		make dependencies
		cd $(path); wget -O opencv.zip https://github.com/opencv/opencv/archive/3.3.1.zip; unzip opencv.zip; mkdir build; cd build; cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ..; make -j3; sudo make install

# the following target will install and download opencv from the web
installOpenCV:
		wget -O opencv.zip https://github.com/opencv/opencv/archive/3.3.1.zip
		unzip opencv.zip
		cd ~/opencv-3.3.1; mkdir build; cd build; cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ..; make -j3; sudo make install

# the following target will install all the necessary dependencies
dependencies:
		sudo apt-get update
		sudo apt-get upgrade
		# this will install dependencies
		sudo apt-get install build-essential checkinstall cmake pkg-config yasm
		sudo apt-get install git gfortran
		sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
		sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libdc1394-22-dev
		sudo apt-get install libjpeg8-dev libjasper-dev libpng12-dev
		sudo apt-get install libtiff5-dev
		sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev
		sudo apt-get install libxine2-dev libv4l-dev
		sudo apt-get install libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev
		sudo apt-get install qt5-default libgtk2.0-dev libtbb-dev
		sudo apt-get install libatlas-base-dev
		sudo apt-get install libfaac-dev libmp3lame-dev libtheora-dev
		sudo apt-get install libvorbis-dev libxvidcore-dev
		sudo apt-get install libopencore-amrnb-dev libopencore-amrwb-dev
		sudo apt-get install x264 v4l-utils
		# optional dependencies
		sudo apt-get install libprotobuf-dev protobuf-compiler
		sudo apt-get install libgoogle-glog-dev libgflags-dev
		sudo apt-get install libgphoto2-dev libeigen3-dev libhdf5-dev doxygen
		# install python libraries
		sudo apt-get install python-dev python-pip python3-dev python3-pip
		sudo -H pip2 install -U pip numpy
		sudo -H pip3 install -U pip numpy

