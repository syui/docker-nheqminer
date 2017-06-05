https://zec.suprnova.cc

- My Account -> My worker

https://github.com/ocminer/nheqminer

```bash
$ sudo pacman -Syu nvidia-304xx-utils --noconfirm
```

### zcash

https://github.com/zcash/zcash/wiki/1.0-User-Guide

```
$ zcash-cli getnewaddress
# https://zec.suprnova.cc -> Login -> Setting -> ACCOUNT DETAILS -> Payment Address
```

### xorg

```bash
$ startx 
$ cat /var/log/Xorg.0.log
(EE) modeset failed to ...
```

> /etc/X11/xorg.conf.d/20-intel.conf 

```
Section "Device"
   Identifier  "Intel Graphics"
   Driver      "intel"
   Option      "TearFree"    "true"
EndSection
```

### mac

https://developer.nvidia.com/cuda-downloads

```bash
You can configure shared paths from Docker -> Preferences... -> File Sharing.
See https://docs.docker.com/docker-for-mac/osxfs/#namespaces for more info.
+ /usr/local/cuda
+ /Developer/NVIDIA

$ scp archlinux:/usr/lib/nvidia/libcuda.so.1 /usr/local/cuda/lib/

$ sudo docker run \
        -v /usr/local/cuda/lib/libcuda.dylib:/usr/lib/x86_64-linux-gnu/libcuda.so \
        -v /usr/local/cuda/lib/libcuda.so.1:/usr/lib/x86_64-linux-gnu/libcuda.so.1 \
	-it $IMAGE_NAME \
       	nheqminer -l zec.suprnova.cc:2142 -u ${Z_USER}.${Z_WORK} -p ${Z_PASS} -t ${Z_CORE}
```

