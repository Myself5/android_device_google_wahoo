# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/wahoo/overlay-lineage

# EUICC feature
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.telephony.euicc.xml

# Kernel headers
PRODUCT_VENDOR_KERNEL_HEADERS := device/google/wahoo/kernel-headers

# IMS
PRODUCT_PACKAGES += \
   com.android.ims.rcsmanager \
   RcsService \
   PresencePolling

# Force triple frame buffers
PRODUCT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3

# Snap
PRODUCT_PACKAGES += \
    Snap

# Build vendor img
AB_OTA_PARTITIONS += \
    vendor

# Build necessary packages for vendor
PRODUCT_PACKAGES += \
    ese-ls-provision \
    ese-replay \
    libjson \
    libsensorndkbridge:32 \
    libtinyxml

# Add missing vendor props
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    media.mediadrmservice.enable=true \
    ro.oem_unlock.pst_offset=6144 \
    ro.oem_unlock.pst=/dev/block/platform/soc/1da4000.ufshc/by-name/misc \
    ro.hardware.egl=adreno \
    ro.gfx.driver.0=com.google.pixel.wahoo.gfxdrv

# Setting vendor SPL
VENDOR_SECURITY_PATCH := "2019-08-01"

# Shared java libs
PRODUCT_PACKAGES += \
    com.android.nfc_extras

# MiFare Permissions file
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/com.nxp.mifare.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.nxp.mifare.xml

# Google Assistant
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += ro.opa.eligible_device=true

# Trust HAL
PRODUCT_PACKAGES += \
    vendor.lineage.trust@1.0-service

# TWRP
PRODUCT_COPY_FILES += \
    device/google/wahoo/fstab.hardware:recovery/root/fstab.$(PRODUCT_HARDWARE) \
    device/google/wahoo/recovery/root/sbin/ese_load:recovery/root/sbin/ese_load \
    device/google/wahoo/recovery/root/system/etc/event-log-tags:recovery/root/event-log-tags \
    device/google/wahoo/recovery/root/sbin/prepdecrypt.sh:recovery/root/sbin/prepdecrypt.sh \
    device/google/wahoo/recovery/root/sbin/touchdriver.sh:recovery/root/sbin/touchdriver.sh

PRODUCT_COPY_FILES += \
    device/google/wahoo/recovery/root/etc/twrp.fstab:recovery/root/etc/twrp.fstab \
    device/google/wahoo/recovery/root/sbin/qseecomd:recovery/root/sbin/qseecomd \
    device/google/wahoo/recovery/root/sbin/libdiag.so:recovery/root/sbin/libdiag.so \
    device/google/wahoo/recovery/root/sbin/libdrmfs.so:recovery/root/sbin/libdrmfs.so \
    device/google/wahoo/recovery/root/sbin/libdrmtime.so:recovery/root/sbin/libdrmtime.so \
    device/google/wahoo/recovery/root/sbin/libQSEEComAPI.so:recovery/root/sbin/libQSEEComAPI.so \
    device/google/wahoo/recovery/root/sbin/librpmb.so:recovery/root/sbin/librpmb.so \
    device/google/wahoo/recovery/root/sbin/libssd.so:recovery/root/sbin/libssd.so \
    device/google/wahoo/recovery/root/sbin/libtime_genoff.so:recovery/root/sbin/libtime_genoff.so \
    device/google/wahoo/recovery/root/sbin/libgptutils.so:recovery/root/sbin/libgptutils.so \
    device/google/wahoo/recovery/root/sbin/libkeymasterdeviceutils.so:recovery/root/sbin/libkeymasterdeviceutils.so \
    device/google/wahoo/recovery/root/nonplat_hwservice_contexts:recovery/root/nonplat_hwservice_contexts \
    device/google/wahoo/recovery/root/plat_hwservice_contexts:recovery/root/plat_hwservice_contexts \
    device/google/wahoo/recovery/root/plat_hwservice_contexts:recovery/root/plat_service_contexts \
    device/google/wahoo/recovery/root/vendor/compatibility_matrix.1.xml:recovery/root/vendor/compatibility_matrix.1.xml \
    device/google/wahoo/recovery/root/vendor/compatibility_matrix.2.xml:recovery/root/vendor/compatibility_matrix.2.xml \
    device/google/wahoo/recovery/root/vendor/compatibility_matrix.3.xml:recovery/root/vendor/compatibility_matrix.3.xml \
    device/google/wahoo/recovery/root/vendor/compatibility_matrix.device.xml:recovery/root/vendor/compatibility_matrix.device.xml \
    device/google/wahoo/recovery/root/vendor/compatibility_matrix.legacy.xml:recovery/root/vendor/compatibility_matrix.legacy.xml \
    device/google/wahoo/recovery/root/vendor/etc/vintf/manifest.xml:recovery/root/vendor/etc/vintf/manifest.xml \
    device/google/wahoo/recovery/root/odm/etc/vintf/manifest.xml:recovery/root/odmrename/etc/vintf/manifest.xml \
    device/google/wahoo/recovery/root/system/etc/vintf/manifest.xml:recovery/root/manifest.xml \
    device/google/wahoo/recovery/root/vendor/etc/vintf/compatibility_matrix.xml:recovery/root/vendor/etc/vintf/compatibility_matrix.xml \
    device/google/wahoo/recovery/root/odm/lib64/hw/android.hardware.boot@1.0-impl.so:recovery/root/odmrename/lib64/hw/android.hardware.boot@1.0-impl.so \
    device/google/wahoo/recovery/root/odm/lib64/hw/android.hardware.gatekeeper@1.0-impl-qti.so:recovery/root/odmrename/lib64/hw/android.hardware.gatekeeper@1.0-impl-qti.so \
    device/google/wahoo/recovery/root/odm/lib64/hw/android.hardware.keymaster@3.0-impl-qti.so:recovery/root/odmrename/lib64/hw/android.hardware.keymaster@3.0-impl-qti.so \
    device/google/wahoo/recovery/root/sbin/android.hardware.keymaster@3.0-service-qti:recovery/root/sbin/android.hardware.keymaster@3.0-service-qti \
    device/google/wahoo/recovery/root/sbin/android.hardware.gatekeeper@1.0-service-qti:recovery/root/sbin/android.hardware.gatekeeper@1.0-service-qti \
    device/google/wahoo/recovery/root/sbin/android.hardware.boot@1.0-service:recovery/root/sbin/android.hardware.boot@1.0-service \
    device/google/wahoo/recovery/root/odm/lib64/hw/bootctrl.msm8998.so:recovery/root/odmrename/lib64/hw/bootctrl.msm8998.so \
    device/google/wahoo/recovery/root/sbin/esed:recovery/root/sbin/esed \
    device/google/wahoo/recovery/root/sbin/ese-ls-provision:recovery/root/sbin/ese-ls-provision \
    device/google/wahoo/recovery/root/sbin/android.hardware.weaver@1.0.so:recovery/root/sbin/android.hardware.weaver@1.0.so \
    device/google/wahoo/recovery/root/sbin/android.hardware.boot@1.0.so:recovery/root/sbin/android.hardware.boot@1.0.so \
    device/google/wahoo/recovery/root/sbin/android.hardware.confirmationui@1.0.so:recovery/root/sbin/android.hardware.confirmationui@1.0.so \
    device/google/wahoo/recovery/root/sbin/libp61-jcop-kit.so:recovery/root/sbin/libp61-jcop-kit.so \
    device/google/wahoo/recovery/root/sbin/libese-app-boot.so:recovery/root/sbin/libese-app-boot.so \
    device/google/wahoo/recovery/root/sbin/libese-app-weaver.so:recovery/root/sbin/libese-app-weaver.so \
    device/google/wahoo/recovery/root/sbin/libese_cpp_nxp_pn80t_nq_nci.so:recovery/root/sbin/libese_cpp_nxp_pn80t_nq_nci.so \
    device/google/wahoo/recovery/root/sbin/libese-hw-nxp-pn80t-nq-nci.so:recovery/root/sbin/libese-hw-nxp-pn80t-nq-nci.so \
    device/google/wahoo/recovery/root/sbin/libese.so:recovery/root/sbin/libese.so \
    device/google/wahoo/recovery/root/sbin/libese-sysdeps.so:recovery/root/sbin/libese-sysdeps.so \
    device/google/wahoo/recovery/root/sbin/libese-teq1.so:recovery/root/sbin/libese-teq1.so \
    device/google/wahoo/recovery/root/odm/firmware/ese/prodkeys/ese.f000.prodkeys:recovery/root/odmrename/firmware/ese/prodkeys/ese.f000.prodkeys \
    device/google/wahoo/recovery/root/odm/firmware/ese/prodkeys/ese.f102.prodkeys:recovery/root/odmrename/firmware/ese/prodkeys/ese.f102.prodkeys \
    device/google/wahoo/recovery/root/odm/firmware/ese/prodkeys/ese.f200.prodkeys:recovery/root/odmrename/firmware/ese/prodkeys/ese.f200.prodkeys \
    device/google/wahoo/recovery/root/odm/firmware/ese/prodkeys/ese.f201.prodkeys:recovery/root/odmrename/firmware/ese/prodkeys/ese.f201.prodkeys \
    device/google/wahoo/recovery/root/odm/firmware/ese/prodkeys/ese.shadata.prodkeys:recovery/root/odmrename/firmware/ese/prodkeys/ese.shadata.prodkeys \
    device/google/wahoo/recovery/root/odm/firmware/ese/testkeys/ese.f000.testkeys:recovery/root/odmrename/firmware/ese/testkeys/ese.f000.testkeys \
    device/google/wahoo/recovery/root/odm/firmware/ese/testkeys/ese.f102.testkeys:recovery/root/odmrename/firmware/ese/testkeys/ese.f102.testkeys \
    device/google/wahoo/recovery/root/odm/firmware/ese/testkeys/ese.f200.testkeys:recovery/root/odmrename/firmware/ese/testkeys/ese.f200.testkeys \
    device/google/wahoo/recovery/root/odm/firmware/ese/testkeys/ese.f201.testkeys:recovery/root/odmrename/firmware/ese/testkeys/ese.f201.testkeys \
    device/google/wahoo/recovery/root/odm/firmware/ese/testkeys/ese.shadata.testkeys:recovery/root/odmrename/firmware/ese/testkeys/ese.shadata.testkeys
