//
//  NSString+Occurs.h
//  AdvancedObjectiveCDemo
//
//  Created by Fredrick Myers on 10/22/13.
//  Copyright (c) 2013 Oak Leaf Enterprises, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Occurs)

// Returns the number of occurrences of a string within the receiver
- (NSUInteger) occurrencesOfString: (NSString *)aString;

@end
