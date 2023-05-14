#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from A109 device
$(call inherit-product, device/micromax/A109/device.mk)

PRODUCT_DEVICE := A109
PRODUCT_NAME := omni_A109
PRODUCT_BRAND := Micromax
PRODUCT_MODEL := Micromax A109
PRODUCT_MANUFACTURER := micromax

PRODUCT_GMS_CLIENTID_BASE := android-micromax

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="yulong89_wet_kk-user 4.4.2 KOT49H 146 release-keys"

BUILD_FINGERPRINT := Micromax/A109/A109:4.4.2/KOT49H/4.4.026.P0.140702.A109:user/release-keys
