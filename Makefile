
universal_app: x86_app arm_app
	lipo -create -output touch touch_x86 touch_arm

x86_app: main.swift
	swiftc main.swift -o touch_x86 -target x86_64-apple-macos10.15

arm_app: main.swift
	swiftc main.swift -o touch_arm -target arm64-apple-macosx11.0
