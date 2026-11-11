#import <Foundation/Foundation.h>

// SBLowPowerModeAlwaysOnPolicy (SpringBoard.framework, iOS 16+) holds a BLSAssertion carrying
// BLSDisableAlwaysOnAttribute while Low Power Mode is on. -_updateAssertion acquires it when
// -[NSProcessInfo isLowPowerModeEnabled] is YES and cancels it otherwise. Skipping the original
// means the assertion is never acquired; Low Power Mode itself is untouched.
%hook SBLowPowerModeAlwaysOnPolicy

- (void)_updateAssertion {
}

%end
