#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-FileCopyrightText: Halcyon Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the telephony configuration.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/generic/common/gsi_arm64.mk)

# Inherit from Halcyon's configuration.
$(call inherit-product, vendor/halcyon/config/common.mk)

# Allow building otatools
TARGET_FORCE_OTA_PACKAGE := true

# Disable soong defined system image for now
USE_SOONG_DEFINED_SYSTEM_IMAGE := false

PRODUCT_USE_DYNAMIC_PARTITION_SIZE := true

TARGET_NO_KERNEL_OVERRIDE := true

PRODUCT_NAME := halcyon_celestite
PRODUCT_DEVICE := gsi_arm64
PRODUCT_BRAND := halcyon
PRODUCT_MODEL := Halcyon Celestite
PRODUCT_MANUFACTURER := Halcyon

PRODUCT_ENFORCE_ARTIFACT_PATH_REQUIREMENTS :=
