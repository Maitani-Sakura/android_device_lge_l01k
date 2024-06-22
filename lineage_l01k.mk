#
# Copyright (C) 2018-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from l01k device
$(call inherit-product, device/lge/l01k/device.mk)

# Device identifiers
PRODUCT_DEVICE := l01k
PRODUCT_NAME := lineage_l01k
PRODUCT_BRAND := lge
PRODUCT_MODEL := l01k
PRODUCT_MANUFACTURER := LGE
PRODUCT_RELEASE_NAME := V30

PRODUCT_GMS_CLIENTID_BASE := android-om-lg

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="L-01K" \
    PRODUCT_DEVICE="L-01K" \
    PRODUCT_NAME="joan_dcm_jp" \
    PRIVATE_BUILD_DESC="joan_dcm_jp-user 9 PKQ1.190414.001 20072184679ed release-keys"

BUILD_FINGERPRINT="lge/joan_dcm_jp/L-01K:9/PKQ1.190414.001/20072184679ed:user/release-keys"

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += ro.product.model ro.vendor.product.model ro.product.system.model
