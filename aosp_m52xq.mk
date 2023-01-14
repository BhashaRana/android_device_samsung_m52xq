#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit device configuration
$(call inherit-product, device/samsung/m52xq/device.mk)

# Inherit from the 64 bit configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_DEVICE := m52xq
PRODUCT_NAME := aosp_m52xq
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M526B
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_SHIPPING_API_LEVEL := 30

# Fingerprint
BUILD_FINGERPRINT := "samsung/m52xqins/m52xq:11/RP1A.200720.012/M526BXXS1BVG4:user/release-keys"
PRIVATE_BUILD_DESC := "m52xqins-user 11 RP1A.200720.012 M526BXXS1BVG4 release-keys"
