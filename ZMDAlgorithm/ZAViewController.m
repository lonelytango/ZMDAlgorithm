//
//  ZAViewController.m
//  ZMDAlgorithm
//
//  Created by Zian Chen on 8/19/13.
//  Copyright (c) 2013 Zian Mobile Development. All rights reserved.
//

#import "ZAViewController.h"
#import "NSArray+SortingAlgorithm.h"

@interface ZAViewController ()
@property (nonatomic, strong) NSArray *arrayOfNumbers;
@end

@implementation ZAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _arrayOfNumbers = @[@3, @1, @100, @5, @34, @14, @2, @7, @0, @10, @21];
    
    NSLog(@"Sorted Array: %@", [_arrayOfNumbers mergeSort]);
    
}

@end
