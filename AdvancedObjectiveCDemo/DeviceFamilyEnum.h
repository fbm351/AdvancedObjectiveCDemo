//
//  DeviceFamilyEnum.h
//  iDeliverMobile
//
//  Created by Kevin McNeish on 6/20/12.
//  Copyright (c) 2012 Oak Leaf Enterprises, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
	DeviceFamilyiPhone,
	DeviceFamilyiPod,
	DeviceFamilyiPad,
	DeviceFamilyAppleTV
} DeviceFamily;

#define DeviceFamilyStrings \
NSLocalizedString(@"iPhone", @""),  \
NSLocalizedString(@"iPod", @""), \
NSLocalizedString(@"iPad", @""), \
NSLocalizedString(@"AppleTV", @""), nil

@interface DeviceFamilyEnum : NSObject 

// Returns the string for the specified enum member
+(NSString *) enumToString:(DeviceFamily)enumVal;

// Returns an enum member for the specified string
+(DeviceFamily) stringToEnum:(NSString *)strVal;

// Returns the number of members in the enumeration
+(NSUInteger) count;

@end

