//
//  DeviceFamilyEnum.m
//  iDeliverMobile
//
//  Created by Kevin McNeish on 6/20/12.
//  Copyright (c) 2012 Oak Leaf Enterprises, Inc. All rights reserved.
//

#import "DeviceFamilyEnum.h"

@implementation DeviceFamilyEnum

NSArray *enumArray;

+ (void)initialize 
{
	enumArray = [[NSArray alloc] initWithObjects:DeviceFamilyStrings];
}

+ (NSUInteger)count {
	return enumArray.count;
}

+ (NSString *) enumToString:(DeviceFamily)enumValue
{
	return [enumArray objectAtIndex:enumValue];
}

+ (DeviceFamily) stringToEnum:(NSString *)stringValue
{
	NSUInteger index = [enumArray indexOfObject:stringValue];
	if (index == NSNotFound) {
		[NSException raise:NSGenericException format:@"Unexpected DeviceFamily string"];;
	}
	return (DeviceFamily)index;
}	

@end
