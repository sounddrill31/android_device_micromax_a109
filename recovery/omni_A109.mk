$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Add this line if your device is 64-bit
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
# Otherwise, If you have 32-bit device, add the below line instead of above line
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk

# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# If you are building from OmniROM's minimal source, Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Replace A109 with your Device Name's Value.
# Replace Micromax with your Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/Micromax/A109/prebuilt/zImage:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := A109
PRODUCT_NAME := omni_A109
PRODUCT_BRAND := Micromax
PRODUCT_MODEL := A109
PRODUCT_MANUFACTURER := Micromax

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="Micromax/A109/A109:4.4.2/KOT49H/4.4.026.P0.140702.A109:user/release-keys" \
    PRIVATE_BUILD_DESC="yulong89_wet_kk-user 4.4.2 KOT49H 146 release-keys"