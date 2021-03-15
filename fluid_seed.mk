# Copyright (C) 2019 The Fluid Project
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

$(call inherit-product, device/google/seed/full_seed.mk)

# Inherit some common Project Fluid stuff.
$(call inherit-product, vendor/fluid/config/common.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8916

## GApps stuff - Define only if you're really sure you can house GApps in 1.5 GB system
# Use GApps
# TARGET_INCLUDE_GAPPS := true

# We have ARM device so GApps will be ARM
# TARGET_GAPPS_ARCH := arm

# Our system partition is too small to house all GApps so use minimal one
# TARGET_INCLUDE_MINIMAL_GAPPS :=true

# Maintainer stuff
PRODUCT_PRODUCT_PROPERTIES += \
  ro.fluid.maintainer=Wind/owZ \
  ro.fluid.cpu=MSM8916

# Boot animation
TARGET_BOOT_ANIMATION_RES := 720

# Device identifier. This must come after all inclusions
PRODUCT_NAME := fluid_seed
PRODUCT_DEVICE := seed
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := google

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="seed_l8150-user 7.1.1 N0F27E 4103848 release-keys"

BUILD_FINGERPRINT := google/seed/l8150:7.1.1/N0F27E/4103848:user/release-keys
