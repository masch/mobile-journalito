.PHONY: dev dev-lan emulator-android

dev:
	bun start --clear

dev-lan:
	REACT_NATIVE_PACKAGER_HOSTNAME=10.42.0.1 bun start --lan --clear

stop-expo:
	adb shell am force-stop host.exp.exponent

emulator-android:
	adb kill-server
	adb start-server
	emulator -avd Pixel_Dev -gpu host -dns-server 8.8.8.8 -no-snapshot-load &