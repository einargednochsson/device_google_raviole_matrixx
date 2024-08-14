#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Matrixx
MATRIXX_BUILD_TYPE := Official
MATRIXX_MAINTAINER := EinarG.
MATRIXX_CHIPSET := GS101
MATRIXX_BATTERY := 4614mAh
MATRIXX_DISPLAY := 1080x2400

# Matrixx Flags
WITH_GMS := true
TARGET_HAS_UDFPS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_PIXEL_FRAMEWORK := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_PIXEL_BOOT_ANIMATION_RES := 1080
TARGET_IS_PIXEL := true
TARGET_IS_PIXEL_6 := true
TARGET_PIXEL_STAND_SUPPORTED := true
TARGET_EXCLUDES_AUXIO := true
TARGET_EXCLUDES_VIA := true
BUILD_GOOGLE_CONTACTS := true
BUILD_GOOGLE_DIALER := true
BUILD_GOOGLE_MESSAGE := true

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_oriole.mk)
$(call inherit-product, device/google/gs101/lineage_common.mk)

include device/google/raviole/oriole/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6
PRODUCT_NAME := lineage_oriole

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=oriole \
    PRIVATE_BUILD_DESC="oriole-user 14 AP2A.240805.005.F1 12043167 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:14/AP2A.240805.005.F1/12043167:user/release-keys

$(call inherit-product, vendor/google/oriole/oriole-vendor.mk)
