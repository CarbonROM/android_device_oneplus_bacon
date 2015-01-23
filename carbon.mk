# Copyright (C) 2014 The CyanogenMod Project
# Copyright (C) 2014 The Carbon Project
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

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from bacon device
$(call inherit-product, device/oneplus/bacon/bacon.mk)

# Inherit some common Carbon stuff.
$(call inherit-product, vendor/carbon/config/common_phone.mk)

PRODUCT_NAME := carbon_bacon
PRODUCT_DEVICE := bacon
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := One
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=carbon.bacon.$(shell date +%m%d%y).$(shell date +%H%M%S)
PRODUCT_PROPERTY_OVERRIDES += ro.carbon.device=Carbon_bacon
CARBON_BUILDTYPE := NIGHTLY

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BRAND := oneplus
TARGET_VENDOR_PRODUCT_NAME := bacon
TARGET_VENDOR_DEVICE_NAME := bacon

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=bacon \
                                PRODUCT_NAME=bacon


PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=oneplus/bacon/bacon:4.4.2/KVT49L/XNPH25R:user/release-keys \
                                PRIVATE_BUILD_DESC="Carbon_bacon-user 4.4.2 KVT49L XNPH25R release-keys"