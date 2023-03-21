#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from itel-L6006S device
$(call inherit-product, device/itel/L6006S/device.mk)

PRODUCT_DEVICE := L6006S
PRODUCT_NAME := omni_L6006S
PRODUCT_BRAND := Itel
PRODUCT_MODEL := itel L6006S
PRODUCT_MANUFACTURER := itel

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="L6006S-SU385-10-KE-SF-V008-20220118"

BUILD_FINGERPRINT := Itel/SU385/itel-L6006S:10/QP1A.190711.020/KE-V008-20220118:user/release-keys
