#
# Copyright (C) 2022 The CorvusOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common CorvusOS stuff.
$(call inherit-product, vendor/corvus/config/common_full_phone.mk)

# Build Flags
USE_PROTON := true
TARGET_BOOT_ANIMATION_RES := 720
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USES_BLUR := true
TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_USES_MINI_GAPPS := true
IS_PHONE := true
CORVUS_MAINTAINER=Anant_Goel && Dextyy5
TARGET_GAPPS_VARIANT := stock
TARGET_WITH_GAPPS := true

# Inherit from Mi439 device
$(call inherit-product, device/xiaomi/Mi439/device.mk)

# Overlays
PRODUCT_PACKAGES += \
    xiaomi_pine_overlay_corvus \
    xiaomi_olive_overlay_corvus

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Mi439
PRODUCT_NAME := corvus_Mi439
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := SDM439
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="olive-user 13 TPP2.220218.010 V12.5.1.0.QCNMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "google/raven/raven:Tiramisu/TPP2.220218.010/8278900:user/release-keys"
