THEOS_DEVICE_IP = 10.0.0.225
GO_EASY_ON_ME = 1


PACKAGE_VERSION = $(THEOS_PACKAGE_BASE_VERSION)
PACKAGE_VERSION = $(THEOS_PACKAGE_BASE_VERSION)-$(VERSION.INC_BUILD_NUMBER)$(VERSION.EXTRAVERSION)

TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard

ARCHS = arm64 arm64e
#SDKVERSION = 13.3
#SYSROOT = $(THEOS)/sdks/iPhoneOS13.3.sdk


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TVLock

$(TWEAK_NAME)_FILES = Tweak.x
$(TWEAK_NAME)_CFLAGS = -fobjc-arc
$(TWEAK_NAME)_EXTRA_FRAMEWORKS += Cephei

include $(THEOS_MAKE_PATH)/tweak.mk
#SUBPROJECTS += TrueDatePrefs
include $(THEOS_MAKE_PATH)/aggregate.mk