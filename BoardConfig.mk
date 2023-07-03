DEVICE_PATH := device/Micromax/A109

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

TARGET_BOOTLOADER_BOARD_NAME := Micromax_A109

# File systems
TARGET_USERIMAGES_USE_EXT4 := true

# Kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_ADDR := 0x00000100
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_MKBOOTIMG_ARGS += --kernel_offset 0x00008000
BOARD_MKBOOTIMG_ARGS += --second_offset 0x00f00000
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/bootimg/kernel
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/bootimg/custombootimg.mk
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216

# TWRP
TW_THEME := portrait_mdpi
RECOVERY_SDCARD_ON_DATA := true
