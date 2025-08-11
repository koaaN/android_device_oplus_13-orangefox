#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2020-2021 The OrangeFox Recovery Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#
FDEVICE="PJZ110"

fox_get_target_device() {
local chkdev=$(echo "$BASH_SOURCE" | grep -w $FDEVICE)
   if [ -n "$chkdev" ]; then 
      FOX_BUILD_DEVICE="$FDEVICE"
   else
      chkdev=$(set | grep BASH_ARGV | grep -w $FDEVICE)
      [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$FDEVICE"
   fi
}

if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
   fox_get_target_device
fi

if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
	export LC_ALL="C"
	export FOX_AB_DEVICE=1
	export OF_AB_DEVICE_WITH_RECOVERY_PARTITION=1
	export OF_RECOVERY_AB_FULL_REFLASH_RAMDISK=1
	export OF_USE_LZ4_COMPRESSION=1
	export FOX_USE_TAR_BINARY=1
	export FOX_USE_SED_BINARY=1
	export FOX_USE_LZ4_BINARY=1
	export FOX_USE_ZSTD_BINARY=1
	export FOX_USE_DATE_BINARY=1
	export OF_TWRP_COMPATIBILITY_MODE=1
	export OF_NO_RELOAD_AFTER_DECRYPTION=1
	export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
	export FOX_DELETE_AROMAFM=1
	export OF_USE_GREEN_LED=0
	export TARGET_DEVICE_ALT="dodge,PJZ110"
	export FOX_TARGET_DEVICES="dodge,PJZ110"
	export FOX_VANILLA_BUILD=1
	export OF_NO_MIUI_PATCH_WARNING=1
	export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1
	export FOX_USE_GREP_BINARY=1
	export FOX_USE_BUSYBOX_BINARY=1
	export FOX_USE_XZ_UTILS=1
	export OF_FORCE_PREBUILT_KERNEL=1
	export OF_ENABLE_LPTOOLS=1
	export OF_ENABLE_ALL_PARTITION_TOOLS=1
	export FOX_VIRTUAL_AB_DEVICE=1
	export OF_DYNAMIC_FULL_SIZE=15354134528
	export OF_ENABLE_FS_COMPRESSION=1
	export OF_DISPLAY_FORMAT_FILESYSTEMS_DEBUG_INFO=1
	export FOX_ALLOW_EARLY_SETTINGS_LOAD=1
	export OF_UNBIND_SDCARD_F2FS=1
	export OF_WIPE_METADATA_AFTER_DATAFORMAT=1
	export FOX_USE_UPDATED_MAGISKBOOT=1
	export OF_FORCE_DATA_FORMAT_F2FS=1
	export FOX_MOVE_MAGISK_INSTALLER_TO_RAMDISK=1
	export FOX_USE_FSCK_EROFS_BINARY=1
	export FOX_USE_PATCHELF_BINARY=1
	export OF_OPTIONS_LIST_NUM=6

	# For OnePlus 13
	export FOX_VARIANT="OnePlus_13"
	export OF_MAINTAINER="Jonas Salo & Daniel Springer"
	export OF_SCREEN_H=2376
fi
#
