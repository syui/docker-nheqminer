#!/bin/bash

IMAGE_NAME=
Z_USER=
Z_WORK=
Z_PASS=
Z_CORE=1
T_ADDR=

case $OSTYPE in
	linux*)
		sudo docker run \
		        -v /usr/lib/nvidia/libcuda.so:/usr/lib/x86_64-linux-gnu/libcuda.so \
		        -v /usr/lib/nvidia/libcuda.so.1:/usr/lib/x86_64-linux-gnu/libcuda.so.1 \
			-it $IMAGE_NAME \
		       	nheqminer -l zec.suprnova.cc:2142 -u ${Z_USER}.${Z_WORK} -p ${Z_PASS} -t ${Z_CORE}
		;;
	darwin*)
		sudo docker run \
		        -v /usr/local/cuda/lib/libcuda.dylib:/usr/lib/x86_64-linux-gnu/libcuda.so \
		        -v /usr/lib/cuda/lib/libcuda.so.1:/usr/lib/x86_64-linux-gnu/libcuda.so.1 \
			-it $IMAGE_NAME \
		       	nheqminer -l zec.suprnova.cc:2142 -u ${Z_USER}.${Z_WORK} -p ${Z_PASS} -t ${Z_CORE}
		;;
esac
