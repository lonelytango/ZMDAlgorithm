//
//  ZAViewController.m
//  ZMDAlgorithm
//
//  Created by Zian Chen on 8/19/13.
//  Copyright (c) 2013 Zian Mobile Development. All rights reserved.
//

#import "ZAViewController.h"
#import "NSArray+SortingAlgorithm.h"
#import "NSArray+SearchAlgorithm.h"

@implementation ZAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //NSArray *arrayOfNumbers = @[@3, @1, @100, @5, @34, @14, @2, @7, @0, @10, @21];
    //NSArray *arrayOfAlphabets = @[@"B", @"Z", @"A", @"G", @"K", @"P", @"O", @"U", @"D"];

    NSArray *arrayOfSortedNumbers = @[@1, @4, @6, @12, @43, @50, @56, @80, @100, @102, @113, @123, @134];
    
    [arrayOfSortedNumbers binarySearchForIndexOfObject:@100];
    
    //NSLog(@"Sorted Array: %@", [arrayOfAlphabets mergeSort]);
    
}

@end
