#
# Copyright (C) 2025 The Team Win Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),crown)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
