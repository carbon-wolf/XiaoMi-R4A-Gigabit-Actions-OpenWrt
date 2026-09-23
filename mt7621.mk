#
# MT7621 Profiles
#

DEFAULT_SOC := mt7621

define Device/dsa-migration
  DEVICE_COMPAT_VERSION := 1.1
  DEVICE_COMPAT_MESSAGE := Config cannot be migrated from swconfig to DSA
endef

define Device/xiaomi_mi-router-4a-gigabit
  $(Device/dsa-migration)
  $(Device/uimage-lzma-loader)
  IMAGE_SIZE := 16064k
  DEVICE_VENDOR := Xiaomi
  DEVICE_MODEL := Mi Router 4A
  DEVICE_VARIANT := Gigabit Edition
  DEVICE_PACKAGES := kmod-mt7603 kmod-mt76x2
endef
TARGET_DEVICES += xiaomi_mi-router-4a-gigabit
