#
# Copyright (C) 2018 The LineageOS Project
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

TARGET_TEGRA_VERSION := t210
TARGET_TEGRA_GPU     ?= nvgpu
TARGET_TEGRA_PBC     ?= pbc2

# Properties
include device/nvidia/t210-common/properties.mk

PRODUCT_PACKAGES += \
    init.t210.rc \
    init.t210_common.rc \
    init.tlk.rc \
    ueventd.t210ref.rc

ifeq ($(TARGET_TEGRA_PBC),pbc2)
PRODUCT_PACKAGES += \
    pbc.conf
endif

include device/nvidia/tegra-common/tegra.mk
