# Enable missing props
PRODUCT_PRODUCT_PROPERTIES += \
    ro.opa.eligible_device=true

# EUICC feature
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml

# IMS
PRODUCT_PACKAGES += \
    PresencePolling \
    RcsService

# Kernel headers
PRODUCT_VENDOR_KERNEL_HEADERS := device/google/wahoo/kernel-headers

# Shared java libs
PRODUCT_PACKAGES += \
    com.android.nfc_extras
