include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DokkaebiCall
DokkaebiCall_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"

BUNDLE_NAME = DokkaebiCallBundle
DokkaebiCallBundle_INSTALL_PATH = /Library/MobileSubstrate/DynamicLibraries
include $(THEOS)/makefiles/bundle.mk