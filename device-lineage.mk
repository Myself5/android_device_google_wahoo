# EUICC feature
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml

# Kernel headers
PRODUCT_VENDOR_KERNEL_HEADERS := device/google/wahoo/kernel-headers

# Shared java libs
PRODUCT_PACKAGES += \
    com.android.nfc_extras
