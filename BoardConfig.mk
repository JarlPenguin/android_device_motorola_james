#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from msm8937-common
-include device/motorola/msm8937-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/james

# Assert
TARGET_OTA_ASSERT_DEVICE := james,rjames

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := james_defconfig
BOARD_KERNEL_CMDLINE += dm=\"system none ro,0 1 android-verity /dev/mmcblk0p55\"

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16879616
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11490278400

# Security patch level
VENDOR_SECURITY_PATCH := 2019-03-01

# Inherit from the proprietary version
-include vendor/motorola/james/BoardConfigVendor.mk
