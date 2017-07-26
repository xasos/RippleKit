# RippleKit
Swift wrapper to interact with the Ripple protocol

## Installation

RippleKit supports iOS 9, iOS 10, and iOS 11.

### CocoaPods
Add the RippleKit pod into your Podfile and run `pod install`.

    target :YourTargetName do
      pod 'RippleKit'
    end

### Carthage
1. Add `github "xasos/ripplekit"` to your Cartfile.
2. Run carthage update.
3. Go to your Xcode project's "General" settings. Drag `RippleKit.framework` from `Carthage/Build/iOS` to the "Embedded Binaries" section. Make sure “Copy items if needed” is selected and click Finish.

## License
RippleKit is licensed under the MIT License. See [`LICENSE`](LICENSE) for the full license text.
