obj-m += stateyank.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

tar:
	tar -c -Z -f stateyank.tar.gz Makefile $(shell ls | grep .*c$)
