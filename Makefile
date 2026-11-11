TARGET = iphone:clang:16.5:16.0
ARCHS = arm64 arm64e
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = AODLowPower

AODLowPower_FILES = Tweak.x
AODLowPower_FRAMEWORKS = Foundation
AODLowPower_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
