$(call inherit-product, vendor/omni/config/gsm.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.secure=0 \
    ro.adb.secure=0 \
    security.perf_harden=0 \
    ro.allow.mock.location=1

PRODUCT_MANUFACTURER := vivo

PRODUCT_DEVICE := PD1524B
PRODUCT_NAME := omni_PD1524B
PRODUCT_BRAND := vivo
PRODUCT_MODEL := vivo V3M A
PRODUCT_BOARD := PD1524B

PRODUCT_PACKAGES += \
    init.recovery.mt6755.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/sbin/fuelgauged_static:recovery/root/sbin/fuelgauged_static \
    $(LOCAL_PATH)/recovery/fstab.mt6755:recovery/root/fstab.mt6755