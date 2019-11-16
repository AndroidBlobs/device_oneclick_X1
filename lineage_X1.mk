# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from X1 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := oneclick
PRODUCT_DEVICE := X1
PRODUCT_MANUFACTURER := oneclick
PRODUCT_NAME := lineage_X1
PRODUCT_MODEL := X1

PRODUCT_GMS_CLIENTID_BASE := android-oneclick
TARGET_VENDOR := oneclick
TARGET_VENDOR_PRODUCT_NAME := X1
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="full_t939w_v2_f_dd_f06sf_oneclick-user 8.1.0 O11019 1534585809 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := OneClick/X1/X1:8.1.0/O11019/1534585809:user/release-keys
