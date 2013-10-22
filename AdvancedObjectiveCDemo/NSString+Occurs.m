//
//  NSString+Occurs.m
//  AdvancedObjectiveCDemo
//
//  Created by Fredrick Myers on 10/22/13.
//  Copyright (c) 2013 Oak Leaf Enterprises, Inc. All rights reserved.
//

#import "NSString+Occurs.h"

@implementation NSString (Occurs)

-(NSUInteger) occurrencesOfString:(NSString *)aString
{
    NSUInteger occurrences = 0;
    if (aString != nil) {
        NSUInteger length = [self length];
        NSRange range = NSMakeRange(0, length);
        
        while (range.location != NSNotFound) {
            range = [self rangeOfString:aString options:0 range:range];
            
            if (range.location != NSNotFound) {
                range = NSMakeRange(range.location + range.length, length - (range.location + range.length));
                occurrences++;
            }
        }
        
    }
    return occurrences;
}

@end
