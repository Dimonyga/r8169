# SPDX-License-Identifier: GPL-2.0-only
#
# Makefile for the Realtek network device drivers.
#

r8169-objs += r8169_main.o r8169_firmware.o r8169_phy_config.o
obj-$(CONFIG_R8169) += r8169.o
