#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from L506 device
$(call inherit-product, device/mtt/L506/device.mk)

PRODUCT_DEVICE := L506
PRODUCT_NAME := omni_L506
PRODUCT_BRAND := MTT
PRODUCT_MODEL := L506
PRODUCT_MANUFACTURER := mtt

PRODUCT_GMS_CLIENTID_BASE := android-xtr

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="uws6137_1h10_64b_1g-user 8.1.0 OPM2.171019.012 49317 release-keys"

BUILD_FINGERPRINT := MTT/L506/L506:8.1.0/OPM2.171019.012/49317:user/release-keys
