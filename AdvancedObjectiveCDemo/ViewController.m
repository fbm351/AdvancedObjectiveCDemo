//
//  ViewController.m
//  AdvancedObjectiveCDemo
//
//  Created by Kevin McNeish on 2/29/12.
//  Copyright (c) 2012 Oak Leaf Enterprises, Inc. All rights reserved.
//

#import "ViewController.h"
#import "ConvertDataTypes.h"
#import "ScientificCalculator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    ScientificCalculator *sc = [[ScientificCalculator alloc] init];
    [sc clear];
    
    NSString *myString = @"iPod, iPhone, iPad";
    NSUInteger occurrences = [myString occurrencesOfString:@"i"];
    NSLog(@"Occurrences: %u", occurrences);
    

    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
