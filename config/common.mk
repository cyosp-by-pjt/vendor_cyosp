#PRODUCT_BRAND ?= cyosp


PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1 \
	ro.adb.secure=1

# Copy over the changelog to the device
PRODUCT_COPY_FILES += \
    vendor/cyosp/CHANGELOG-CY.txt:system/etc/CHANGELOG-CY.txt

# M - Android 6, Marshmallow
# A - 0.0
PRODUCT_VERSION_ANDROID = MA

PRODUCT_VERSION_MAJOR = 0
PRODUCT_VERSION_MINOR = 1
PRODUCT_VERSION_MAINTENANCE = 4

CY_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-$(PRODUCT_VERSION_ANDROID)$(shell date +%y%j)$(shell date +%H | awk '{printf "%c", $$1 + 65}')

CY_DISPLAY_VERSION := $(CY_VERSION)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.cyosp.version=$(CY_DISPLAY_VERSION)

# libxml2
PRODUCT_PACKAGES += \
    libxml2
