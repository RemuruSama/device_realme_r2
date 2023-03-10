#
# Copyright (C) 2018 The ArrowOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common Arrow stuff
$(call inherit-product, vendor/arrow/config/common.mk)

# Inherit from RMX1805 device
$(call inherit-product, device/oppo/RMX1805/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := arrow_RMX1805
PRODUCT_DEVICE := RMX1805
PRODUCT_BRAND := oppo
PRODUCT_MODEL := Realme 2
PRODUCT_MANUFACTURER := oppo
PRODUCT_GMS_CLIENTID_BASE := android-oppo

TARGET_VENDOR := oppo
TARGET_VENDOR_PRODUCT_NAME := RMX1805
TARGET_VENDOR_DEVICE_NAME := RMX1805

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="RMX1805"

# Bootanimation
TARGET_BOOTANIMATION_NAME := 720
TARGET_BOOT_ANIMATION_RES := 720
TARGET_BOOTANIMATION_HALF_RES := true
