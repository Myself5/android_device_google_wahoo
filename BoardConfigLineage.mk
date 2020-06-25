# Common board config for taimen, walleye

# Audio
BOARD_SUPPORTS_SOUND_TRIGGER := true

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_SOURCE := kernel/google/wahoo
TARGET_NEEDS_DTBOIMAGE := true

# Build vendor image
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_PARTITION_SIZE := 524288000

# TWRP
TW_THEME := portrait_hdpi
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_DEFAULT_BRIGHTNESS := "80"
TW_INCLUDE_CRYPTO := true
AB_OTA_UPDATER := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TARGET_RECOVERY_FSTAB := device/google/wahoo/recovery.fstab
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
# MTP will not work until we update it to support ffs
TW_EXCLUDE_MTP := true
PLATFORM_SECURITY_PATCH := 2020-10-05
TW_OVERRIDE_SYSTEM_PROPS := "ro.build.version.security_patch"
