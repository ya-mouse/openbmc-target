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

define KernelPackage/net-ftmac100
  SUBMENU:=Network Devices
  TITLE:=Faraday FTMAC10/100
  DEPENDS:=+kmod-mii
  FILES:=\
	$(LINUX_DIR)/drivers/net/ethernet/faraday/ftmac100.ko
  AUTOLOAD:=$(call AutoLoad,17,net-ftmac100 ftmac100)
endef

$(eval $(call KernelPackage,net-ftmac100))

define KernelPackage/net-ftgmac100
  SUBMENU:=Network Devices
  TITLE:=Faraday FTGMAC
  DEPENDS:=+kmod-mii
  FILES:=\
	$(LINUX_DIR)/drivers/net/ethernet/faraday/ftgmac100.ko
  AUTOLOAD:=$(call AutoLoad,17,net-ftgmac100 ftgmac100)
endef

$(eval $(call KernelPackage,net-ftgmac100))

define KernelPackage/phy-b53
  SUBMENU:=Network Devices
  TITLE:=Broadcom B53xx
  DEPENDS:=+kmod-swconfig
  FILES:=\
	$(LINUX_DIR)/drivers/net/phy/b53/b53_common.ko \
	$(LINUX_DIR)/drivers/net/phy/b53/b53_mdio.ko
  AUTOLOAD:=$(call AutoLoad,16,phy-b53 b53_mdio)
endef

$(eval $(call KernelPackage,phy-b53))

define KernelPackage/phy-realtek
  SUBMENU:=Network Devices
  TITLE:=Realtek PHY driver
  FILES:=\
	$(LINUX_DIR)/drivers/net/phy/realtek.ko
  AUTOLOAD:=$(call AutoLoad,16,phy-realtek realtek)
endef

$(eval $(call KernelPackage,phy-realtek))
