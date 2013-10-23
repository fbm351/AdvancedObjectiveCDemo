//
//  Calendar.h
//  AdvancedObjectiveCDemo
//
//  Created by Fredrick Myers on 10/22/13.
//  Copyright (c) 2013 Oak Leaf Enterprises, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calendar : NSObject

@property (strong, nonatomic) NSDate *today;
@property (strong, nonatomic) NSDate *currentDate;

- (id)init;
- (id)initWithCurrentDate:(NSDate *)aDate;

@end
