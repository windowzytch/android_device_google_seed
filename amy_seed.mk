# Copyright (C) 2021 amyROM
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

# Inherit some common amyROM stuff.
$(call inherit-product, vendor/amy/config/common.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8916

## GApps stuff ##
# We have PHHusson's GApps Go as GApps preference so use it
USE_PHH_GAPPS_GO := true
# Define GApps architecture just in case ;)
TARGET_GAPPS_ARCH := arm
#################

# Boot animation
TARGET_BOOT_ANIMATION_RES := 720

# Device identifier. This must come after all inclusions
PRODUCT_NAME := amy_seed
PRODUCT_DEVICE := seed
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := google

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="seed_l8150-user 7.1.1 N0F27E 4103848 release-keys"

BUILD_FINGERPRINT := google/seed/l8150:7.1.1/N0F27E/4103848:user/release-keys
