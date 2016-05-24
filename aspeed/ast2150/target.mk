#
# Copyright (C) 2015 OpenWrt.org
#

SUBTARGET:=ast2150
BOARDNAME:=Aspeed 2150 based boards
#ARCH_PACKAGES:=ramips_1004kc
#FEATURES+=usb
#CPU_TYPE:=1004kc
#CPU_SUBTYPE:=dsp
#CFLAGS:=-Os -pipe -mmt -mips32r2 -mtune=1004kc

KERNEL_PATCHVER:=2.6.28.9
KERNELNAME:=zImage

CONFIG_KERNEL_GIT_LOCAL_REPOSITORY:=""
CONFIG_KERNEL_GIT_BRANCH:=""
CONFIG_KERNEL_GIT_CLONE_URI:=git://github.com/ya-mouse/openwrt-linux-aspeed.git

define Target/Description
	Build firmware images for Aspeed 2150 based boards.
endef
