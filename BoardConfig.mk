#
# Copyright (C) 2018-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/lge/l01k

TARGET_OTA_ASSERT_DEVICE := l01k

# inherit from common repository
include device/lge/joan-common/BoardConfigCommon.mk

# inherit from the proprietary version
include vendor/lge/l01k/BoardConfigVendor.mk
