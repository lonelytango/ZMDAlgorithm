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

    //NSArray *arrayOfSortedNumbers = @[@3, @9, @123, @44, @54, @20, @1, @55, @90, @117, @10, @20, @29];
    NSArray *arrayOfSortedNumbers = @[@6, @10, @13, @5, @8, @3, @2, @11];
    
    //NSArray *arrayOfSortedNumbers = @[@3, @7, @8, @5, @2, @1, @9, @5, @4];
    
    //[arrayOfSortedNumbers binarySearchForIndexOfObject:@100];
    
    [arrayOfSortedNumbers quickSort];
    
    //NSLog(@"Sorted Array: %@", [arrayOfAlphabets mergeSort]);
    
}

@end
