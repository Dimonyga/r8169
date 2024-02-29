# SPDX-License-Identifier: GPL-2.0-only
#
# Makefile for the Realtek network device drivers.
#

CURRENT	= $(shell uname -r)
MDIR	= drivers/net/usb
KDIR	= /lib/modules/$(CURRENT)/build
PWD = $(shell pwd)
DEST = /lib/modules/$(CURRENT)/kernel/$(MDIR)

r8169-objs += r8169_main.o r8169_firmware.o r8169_phy_config.o
obj-$(CONFIG_R8169) += r8169.o

default:
	make -C $(KDIR) M=$(PWD) modules

install:
	su -c "cp -v $(TARGET).ko $(DEST) && /sbin/depmod -a"

clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean

.PHONY: modules clean

-include $(KDIR)/Rules.make



