#
# Copyright (C) 2019 The Android Open Source Project
# Copyright (C) 2019 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator 
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

export FOX_ADVANCED_SECURITY=1
export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1
export FOX_ASH_IS_BASH=1
export FOX_R11=1
export FOX_REPLACE_BUSYBOX_PS=1
export FOX_REPLACE_TOOLBOX_GETPROP=1
export FOX_USE_BASH_SHELL=1
export FOX_USE_NANO_EDITOR=1
# export FOX_USE_TAR_BINARY=1
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
export FOX_USE_UNZIP_BINARY=1
export FOX_USE_ZIP_BINARY=1
export OF_CHECK_OVERWRITE_ATTEMPTS=1
export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1
export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1
export OF_FL_PATH1="/sys/class/leds/flashlight"
export OF_FL_PATH2="/sys/class/leds/flashlight"
export OF_FORCE_MAGISKBOOT_BOOT_PATCH_MIUI=1
export OF_KEEP_FORCED_ENCRYPTION=1
export OF_MAINTAINER="SIDDK"
export OF_NO_MIUI_OTA_VENDOR_BACKUP=1
export OF_NO_MIUI_PATCH_WARNING=1
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
export OF_PATCH_AVB20=1
export OF_QUICK_BACKUP_LIST="/boot;/data;/system;/vendor;"
export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES=1
export OF_SUPPORT_OZIP_DECRYPTION=1
export OF_TARGET_DEVICES="RMX1941,RMX1945,realmec2"
export OF_USE_HEXDUMP=1
export OF_USE_MAGISKBOOT=1
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
export OF_USE_TWRP_SAR_DETECT=1
export PLATFORM_SECURITY_PATCH="2099-12-31"
export PLATFORM_VERSION="16.1.0"
export TARGET_DEVICE_ALT="RMX1941,RMX1945,realmec2"
export TW_DEFAULT_LANGUAGE="en"

if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
	export | grep "FOX" >> $FOX_BUILD_LOG_FILE
	export | grep "OF_" >> $FOX_BUILD_LOG_FILE
	export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
	export | grep "TW_" >> $FOX_BUILD_LOG_FILE
fi

for var in eng user userdebug; do
  add_lunch_combo omni_RMX1941-$var
done
