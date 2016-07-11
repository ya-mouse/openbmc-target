#
# Copyright (C) 2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/node-MH-60
	NAME:=Gigabyte MH-60
endef

define Profile/node-MH-60/Description
	Gigabyte Motherboard MH-60 (Broadwell)
endef
$(eval $(call Profile,node-MH-60))
