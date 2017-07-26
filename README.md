# RippleKit
![Ripple](https://www.privateinternetaccess.com/blog/wp-content/uploads/2013/02/Logo_M.png)

[![CocoaPods](https://img.shields.io/cocoapods/dt/RippleKit.svg?maxAge=2592000)]()
[![Languages](https://img.shields.io/badge/languages-Swift-orange.svg?maxAge=2592000)](https://github.com/xasos/RippleKit)
[![CocoaPods](https://img.shields.io/cocoapods/v/RippleKit.svg?maxAge=2592000)](https://cocoapods.org/pods/RippleKit)
[![carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![MIT License](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat)](LICENSE)

Swift iOS interface to the Ripple Consensus Ledger.

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
