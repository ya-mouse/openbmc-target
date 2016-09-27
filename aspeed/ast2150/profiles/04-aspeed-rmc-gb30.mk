#
# Copyright (C) 2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/aspeed-rmc-gb30
	NAME:=Gigabyte RMC v3.0 profile
endef

define Profile/aspeed-rmc-gb30/Description
	Gigabyte RMC v3.0
endef
$(eval $(call Profile,aspeed-rmc-gb30))
