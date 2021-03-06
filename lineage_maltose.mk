# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from maltose device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := maltose
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_maltose
PRODUCT_MODEL := maltose

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := maltose
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="rosemary-user 11 RP1A.200720.011 V12.5.9.0.RKLINXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Redmi/maltose_in/maltose:11/RP1A.200720.011/V12.5.9.0.RKLINXM:user/release-keys
