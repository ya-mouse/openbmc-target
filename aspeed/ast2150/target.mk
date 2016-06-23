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

KERNEL_PATCHVER:=4.4
KERNELNAME:=zImage

CONFIG_KERNEL_GIT_LOCAL_REPOSITORY:=""
CONFIG_KERNEL_GIT_BRANCH:="dev-4.4"
CONFIG_KERNEL_GIT_CLONE_URI:=git://github.com/openbmc/linux.git

define Target/Description
	Build firmware images for Aspeed 2150 based boards.
endef
