#
# Copyright (C) 2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/aspeed-rmc-gb21
	NAME:=Gigabyte RMC v2.1 profile
endef

define Profile/aspeed-rmc-gb21/Description
	Gigabyte RMC v2.1
endef
$(eval $(call Profile,aspeed-rmc-gb21))
