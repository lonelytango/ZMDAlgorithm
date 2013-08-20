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
    
    _arrayOfNumbers = @[@3, @1, @5, @2, @7, @0];
    
    //NSLog(@"Sorted Array: %@", [_arrayOfNumbers insertionSort]);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
