#
# Copyright (C) 2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

ARCH:=arm
BOARD:=aspeed
BOARDNAME:=Aspeed SoC
SUBTARGETS:=ast2150 ast2400
FEATURES:=squashfs gpio
CPU_TYPE:=arm926ej-s
MAINTAINER:=Anton D. Kachalov <mouse@yandex.ru>

KERNEL_PATCHVER:=4.4

include $(INCLUDE_DIR)/target.mk
DEFAULT_PACKAGES += \
	uboot-aspeed

define Target/Description
	Build firmware images for Aspeed SoC based boards.
endef

$(eval $(call BuildTarget))
