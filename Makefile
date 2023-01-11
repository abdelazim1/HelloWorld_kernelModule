obj-m := main.o
arch =arm
cross_compile =arm-linux-gnueabihf-
#Host_DIR to linux source location (TARGET)
HOST_DIR_TAR = /media/abdelazim/A/All/1_ES/Elinux/linuxDeviceDriver/Workspace/LDD/source/linux-5.4/

#Host_DIR to linux source location to compile against host
HOST_DIR = /lib/modules/$(shell uname -r)/build/

all:
	make ARCH=$(arch) CROSS_COMPILE=$(cross_compile) -C $(HOST_DIR_TAR) M=$(PWD) modules
clean:
	make -C $(HOST_DIR) M=$(PWD) clean
	make ARCH=$(arch) CROSS_COMPILE=$(cross_compile) -C $(HOST_DIR_TAR) M=$(PWD) clean
help:
	make ARCH=$(arch) CROSS_COMPILE=$(cross_compile) -C $(HOST_DIR_TAR) M=$(PWD) help
host:
	make -C $(HOST_DIR) M=$(PWD) modules
