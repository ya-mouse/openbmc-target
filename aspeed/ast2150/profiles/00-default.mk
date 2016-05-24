#
# Copyright (C) 2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/Default
	NAME:=Default Profile
#	PACKAGES:=\
#		kmod-usb-core kmod-usb3 \
#		kmod-ledtrig-usbdev
endef

define Profile/Default/Description
	Default package set compatible with most SoC.
endef
$(eval $(call Profile,Default))
