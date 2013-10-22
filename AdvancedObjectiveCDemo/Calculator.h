//
//  Calculator.h
//  CategoriesExtensionsDemo
//
//  Created by Kevin McNeish on 2/26/12.
//  Copyright (c) 2012 Oak Leaf Enterprises, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    OperationAdd,
    OperationSubtract,
    OperationMultiply,
    OperationDivide,
    OperationClear
} Operation;

@interface Calculator : NSObject {
	
@protected
	double memory1;
	double memory2;
@private
	double privateMemory;
	
}

@property (nonatomic, assign) double total;

- (void) clear;

- (double) addToTotal:(double)value;

- (double) subtractFromTotal:(double)value;

- (double) multiplyTimesTotal:(double)value;

- (double) divideIntoTotal:(double)value;

@end


