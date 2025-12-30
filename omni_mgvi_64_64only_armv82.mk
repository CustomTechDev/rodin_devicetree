#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from mgvi_64_64only_armv82 device
$(call inherit-product, device/alps/mgvi_64_64only_armv82/device.mk)

PRODUCT_DEVICE := mgvi_64_64only_armv82
PRODUCT_NAME := omni_mgvi_64_64only_armv82
PRODUCT_BRAND := alps
PRODUCT_MODEL := mgvi_64_64only_armv82
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="mivendor_mt6899-user 15 AP3A.240905.015.A2 OS3.0.3.0.WOJEUXM release-keys"

BUILD_FINGERPRINT := alps/hal_mgvi_64_64only_armv82/mgvi_64_64only_armv82:15/AP3A.240905.015.A2/OS3.0.3.0.WOJEUXM:user/release-keys
