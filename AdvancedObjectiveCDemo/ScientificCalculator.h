//
//  ScientificCalculator.h
//  CategoriesExtensionsDemo
//
//  Created by Kevin McNeish on 2/26/12.
//  Copyright (c) 2012 Oak Leaf Enterprises, Inc. All rights reserved.
//

#import "Calculator.h"

typedef enum {
	ScientificOperationLog,
    ScientificOperationSin,
    ScientificOperationCos,
    ScientificOperationTan,
} ScientificOperation;

@interface ScientificCalculator : Calculator

@property (nonatomic, assign) double memory;

- (double) log:(double)value;
- (double) sin:(double)value;
- (double) cos:(double)value;
- (double) tan:(double)value;

@end
