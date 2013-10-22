//
//  ScientificCalculator.m
//  CategoriesExtensionsDemo
//
//  Created by Kevin McNeish on 2/26/12.
//  Copyright (c) 2012 Oak Leaf Enterprises, Inc. All rights reserved.
//

#import "ScientificCalculator.h"

@implementation ScientificCalculator
@synthesize memory = _memory;

- (void)clear
{
	[super clear];
	self.memory = 0.00;
}

- (double) log:(double)value
{
	return log(value);
}
- (double) sin:(double)value
{
	return sin(value);
}
- (double) cos:(double)value
{
	return cos(value);
}
- (double) tan:(double)value
{
	return tan(value);
}


@end
