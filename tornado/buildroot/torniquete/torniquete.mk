################################################################################
#
# torniquete
#
################################################################################ 

TORNIQUETE_VERSION = 1.0
TORNIQUETE_SOURCE = torniquete-$(TORNIQUETE_VERSION).tar.gz
TORNIQUETE_SITE = https:// # TODO: Add direct download link
TORNIQUETE_SUBDIR = torniquete
TORNIQUETE_LICENSE = MIT
TOR_LICENSE_FILES = LICENSE
TORNIQUETE_DEPENDENCIES = dnsmasq hostapd iptables iw tor wpa_supplicant

define TORNIQUETE_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0644 -D package/torniquete/hostapd.conf \
		$(TARGET_DIR)/etc/hostapd.conf
	$(INSTALL) -m 0644 -D package/torniquete/dnsmasq.conf \
		$(TARGET_DIR)/etc/dnsmasq.conf
	$(INSTALL) -m 0644 -D package/torniquete/iptables.ipv4 \
		$(TARGET_DIR)/etc/iptables.ipv4
endef

define TORNIQUETE_INSTALL_INIT_SYSV
	$(INSTALL) -m 755 -D package/torniquete/S70torniquete \
		$(TARGET_DIR)/etc/init.d/S70torniquete
endef

