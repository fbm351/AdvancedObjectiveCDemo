//
//  ConvertDataTypes.m
//  AdvancedObjectiveCDemo
//
//  Created by Kevin McNeish on 7/17/12.
//  Copyright (c) 2012 Oak Leaf Enterprises, Inc. All rights reserved.
//

#import "ConvertDataTypes.h"
#import "Calculator.h"
#import "ScientificCalculator.h"

@implementation ConvertDataTypes

- (void)test
{
	[self convertIntegerToDouble];
	[self convertDoubleToInteger];
	[self convertScientificCalculatorToCalculator];
	//[self convertCalculatorToScientificCalculator];	// Produces an exception
	//[self dynamicTyping];								// Produces an exception
	[self duckTyping:[[Calculator alloc] init]];
	BOOL isKind = [self checkIsKindOfClass:[[ScientificCalculator alloc] init]];
	NSLog(@"Is Kind of Class:%@", isKind ? @"Yes" : @"No");
	BOOL isMember = [self checkIsMemberOfClass:[[Calculator alloc] init]];
	NSLog(@"Is Member of Class:%@", isMember ? @"Yes" : @"No");
	BOOL conformsToProtocol = [self checkConformsToProtcol:[[Calculator alloc] init]];
	NSLog(@"Conforms to Protocol:%@", conformsToProtocol ? @"Yes" : @"No");
}

- (void)convertIntegerToDouble
{
	NSInteger i = 10;
	double d = i;
	NSLog(@"Integer to Double: %f", d);
}

- (void)convertDoubleToInteger
{
	double d = 1.567f;
	NSInteger i = (NSInteger)d;
	
	NSLog(@"Double to Integer: %d", i);
}

- (void)convertScientificCalculatorToCalculator
{
	Calculator *calc = [[ScientificCalculator alloc] init];
	[calc addToTotal:10];
}

- (void)convertCalculatorToScientificCalculator
{
	ScientificCalculator *calc = (ScientificCalculator *)[[Calculator alloc] init];
	[calc log:10];	// Produces an "unrecognized selector sent to instance" exception
}

- (void)dynamicTyping
{
	id obj1 = [[Calculator alloc] init];
	ScientificCalculator *calc = obj1;
	[calc log:10];	// Produces an "unrecognized selector sent to instance" exception
}

- (void)duckTyping:(id)obj
{
	if ([obj respondsToSelector:@selector(addToTotal:)]) {
		[obj addToTotal:123];
	}
}

- (BOOL)checkIsMemberOfClass:(id)obj
{
	return [obj isMemberOfClass:[Calculator class]];
}

- (BOOL)checkIsKindOfClass:(id)obj
{
	return [obj isKindOfClass:[Calculator class]];
}

- (BOOL)checkConformsToProtcol:(id)obj
{
	return [obj conformsToProtocol:@protocol(UIPickerViewDataSource)];
}

@end
