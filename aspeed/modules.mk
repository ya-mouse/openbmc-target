#
# Copyright (C) 2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

OTHER_MENU:=Other modules
define KernelPackage/iusb
  SUBMENU:=Other modules
  TITLE:=iUSB virtual hub drivers
  DEPENDS:=@TARGET_aspeed
  FILES:=\
	$(LINUX_DIR)/arch/arm/plat-aspeed/hid/vhid.ko \
	$(LINUX_DIR)/arch/arm/plat-aspeed/iusb/iusb.ko \
	$(LINUX_DIR)/arch/arm/plat-aspeed/usb1_hw/usb1_hw.ko \
	$(LINUX_DIR)/arch/arm/plat-aspeed/usbe/usbe.ko

  AUTOLOAD:=$(call AutoLoad,1,usbe usb1_hw iusb vhid)
endef

$(eval $(call KernelPackage,iusb))

define KernelPackage/videocap
  SUBMENU:=Other modules
  TITLE:=Aspeed videocap engine driver
  DEPENDS:=@TARGET_aspeed
  FILES:=\
	$(LINUX_DIR)/arch/arm/plat-aspeed/videocap/videocap.ko

  AUTOLOAD:=$(call AutoLoad,1,videocap)
endef

$(eval $(call KernelPackage,videocap))
