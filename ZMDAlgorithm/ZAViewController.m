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
#import "NSArray+Addition.h"

@implementation ZAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //NSArray *arrayOfNumbers = @[@3, @1, @100, @5, @34, @14, @2, @7, @0, @10, @21];
    //NSArray *arrayOfAlphabets = @[@"B", @"Z", @"A", @"G", @"K", @"P", @"O", @"U", @"D"];

    //NSArray *arrayOfSortedNumbers = @[@3, @9, @123, @44, @54, @20, @1, @55, @90, @117, @10, @20, @29];
    //NSArray *arrayOfSortedNumbers = @[@6, @5, @3, @1, @8, @7, @2, @4];
    
//    NSMutableSet *mutableSetNumber = [NSMutableSet new];
//    for (int i = 0; i < 1000000; i++) {
//        [mutableSetNumber addObject:@(arc4random() % 10000000)];
//    }
//    NSArray *setNumber = [mutableSetNumber allObjects];
    
    
    //[arrayOfSortedNumbers binarySearchForIndexOfObject:@100];
    
    NSArray *arrayOfSortedNumbers = @[@8, @3, @10, @1, @6, @14, @2, @4, @7, @13];
    
    NSLog(@"Tree Sort: %@", [[arrayOfSortedNumbers quickSort] oneLineDescription]);
    
    //NSLog(@"Sorted Array: %@", [arrayOfAlphabets mergeSort]);
    
}

@end
