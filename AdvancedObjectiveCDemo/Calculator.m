//
//  Calculator.m
//  CategoriesExtensionsDemo
//
//  Created by Kevin McNeish on 2/26/12.
//  Copyright (c) 2012 Oak Leaf Enterprises, Inc. All rights reserved.
//

#import "Calculator.h"

// Class extension
@interface Calculator()

    // Sets the current operation
- (void) setCurrentOperation: (Operation)operation;

@end
 

@implementation Calculator
{
    Operation currentOperation;
}

- (void) setCurrentOperation:(Operation)operation
{
    currentOperation = operation;
}

@synthesize total = _total;

- (void) clear 
{
    self.total = 0.00;
    [self setCurrentOperation:OperationClear];
}

- (double) addToTotal:(double)value 
{
    self.total += value;
    [self setCurrentOperation:OperationAdd];
    return self.total;
}

- (double) subtractFromTotal:(double)value 
{
    self.total -= value;
    [self setCurrentOperation:OperationSubtract];
    return self.total;

}

- (double) multiplyTimesTotal:(double)value
{
    self.total *= value;
    [self setCurrentOperation:OperationMultiply];
    return self.total;

}

- (double) divideIntoTotal:(double)value 
{
    self.total /= value;
    [self setCurrentOperation:OperationDivide];
    return self.total;

}


@end
