ARCHS = armv7 arm64 arm64e

THEOS_BUILD_DIR = Packages

include $(THEOS)/makefiles/common.mk


TWEAK_NAME = SugarCane12
SugarCane12_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 backboardd"
