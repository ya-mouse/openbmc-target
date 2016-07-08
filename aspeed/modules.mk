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

define KernelPackage/i2c-aspeed
  SUBMENU:=I2C support
  TITLE:=I2C Aspeed bus
  DEPENDS:=@TARGET_aspeed +kmod-i2c-core
  FILES:=\
	$(LINUX_DIR)/drivers/i2c/busses/i2c-aspeed.ko \
	$(LINUX_DIR)/drivers/i2c/i2c-slave-eeprom.ko

  AUTOLOAD:=$(call AutoLoad,1,i2c-aspeed i2c-slave-eeprom)
endef

$(eval $(call KernelPackage,i2c-aspeed))

define KernelPackage/ipmi
  SUBMENU:=I2C support
  TITLE:=IPMI drivers
  DEPENDS:=@TARGET_aspeed +kmod-i2c-core
  FILES:=\
	$(LINUX_DIR)/drivers/char/ipmi/ipmi_ssif.ko \
	$(LINUX_DIR)/drivers/char/ipmi/ipmi_si.ko \
	$(LINUX_DIR)/drivers/char/ipmi/ipmi_msghandler.ko \
	$(LINUX_DIR)/drivers/char/ipmi/ipmi_devintf.ko
endef

$(eval $(call KernelPackage,ipmi))
