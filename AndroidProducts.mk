#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/twrp_ossi.mk

COMMON_LUNCH_CHOICES := \
    twrp_ossi-user \
    twrp_ossi-userdebug \
    twrp_ossi-eng
