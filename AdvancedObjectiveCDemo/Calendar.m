//
//  Calendar.m
//  AdvancedObjectiveCDemo
//
//  Created by Fredrick Myers on 10/22/13.
//  Copyright (c) 2013 Oak Leaf Enterprises, Inc. All rights reserved.
//

#import "Calendar.h"

@implementation Calendar

- (id)init
{
    return [self initWithCurrentDate:nil];
}

- (id)initWithCurrentDate:(NSDate *)aDate
{
    if(self = [super init])
    {
        _currentDate = aDate;
        _today = [NSDate date];
    }
    return self;
}

@end
