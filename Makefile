.PHONY: dev dev-lan dev-android emulator-android stop-expo

stop-expo:
	adb shell am force-stop host.exp.exponent

dev: stop-expo
	bun start --clear

dev-android: stop-expo
	bun android --clear

dev-lan:
	REACT_NATIVE_PACKAGER_HOSTNAME=10.42.0.1 bun start --lan --clear


emulator-android:
	adb kill-server
	adb start-server
	emulator -avd Pixel_Dev -gpu host -dns-server 8.8.8.8 -no-snapshot-load &