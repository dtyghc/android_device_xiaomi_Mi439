#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Evolution-X stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)
$(call inherit-product, vendor/gms/gms_full.mk)

# Inherit from Mi439 device
$(call inherit-product, device/xiaomi/Mi439/device.mk)

# Overlays
PRODUCT_PACKAGES += \
    xiaomi_pine_overlay_lineage \
    xiaomi_olive_overlay_lineage

#Build Flags
USE_PROTON := true
TARGET_BOOT_ANIMATION_RES := 720
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USES_BLUR := true
TARGET_INCLUDE_PIXEL_CHARGER := true
IS_PHONE := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Mi439
PRODUCT_NAME := evolution_Mi439
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := SDM439
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="veux-user 12 SKQ1.211006.001 V13.0.2.0.SKCMIXM release-keys"

BUILD_FINGERPRINT := POCO/veux_p_global/veux:12/SKQ1.211006.001/V13.0.2.0.SKCMIXM:user/release-keys
