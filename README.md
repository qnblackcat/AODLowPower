# AODLowPower

Keeps the Always-On Display active while Low Power Mode is on.

## How it works

On iOS 16+, `SBLowPowerModeAlwaysOnPolicy` in SpringBoard holds a `BLSAssertion` with `BLSDisableAlwaysOnAttribute` whenever Low Power Mode is enabled. The tweak skips `-_updateAssertion`, so that assertion is never acquired.

## Requirements

- A device that supports the Always-On Display (iPhone 14 Pro or later).
- iOS 16.0 or later.

## Build

```sh
make clean package FINALPACKAGE=1 THEOS_PACKAGE_SCHEME=rootless
make clean package FINALPACKAGE=1 THEOS_PACKAGE_SCHEME=roothide
```

## License

[MIT](LICENSE)
