#
# Copyright (C) 2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/Spice
	NAME:=Spice-server Profile
	PACKAGES:=spice-server-aspeed
endef

define Profile/Spice/Description
	Spice server
endef
$(eval $(call Profile,Spice))
