#https://forum.xda-developers.com/t/how-to-build-basic-twrp-for-a-android-device-android-9.4562703/
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/micromax/A109
TARGET_OTA_ASSERT_DEVICE := A109

TARGET_COPY_OUT_VENDOR := vendor

TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
# TWRP specific build flags
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_NTFS_3G := true
TW_USE_TOOLBOX := true
TW_INCLUDE_RESETPROP := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_DEFAULT_BRIGHTNESS := 1200
TARGET_USES_MKE2FS := true
TW_NO_LEGACY_PROPS := false
TW_NO_BIND_SYSTEM := true
TW_NO_SCREEN_BLANK := true
TW_EXCLUDE_APEX := true
TW_FRAMERATE := 60
