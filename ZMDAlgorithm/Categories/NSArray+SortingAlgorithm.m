//
//  NSArray+SortingAlgorithm.m
//  ZMDAlgorithm
//
//  Created by Zian Chen on 8/19/13.
//  Copyright (c) 2013 Zian Mobile Development. All rights reserved.
//

#import "NSArray+SortingAlgorithm.h"

@implementation NSArray (SortingAlgorithm)

- (NSArray *)insertionSort {
    
    //Do nothing if the array only has 1 object
    if ([self count] <= 1) {
        return self;
    }
    
    NSMutableArray *sortedArray = [self mutableCopy];
    
    for (int j = 1; j < [sortedArray count]; j++) {
        
        NSNumber *key = sortedArray[j];
        
        int i = j - 1;
        
        //A[i] > key
        while (i >= 0 && [sortedArray[i] compare:key] == NSOrderedDescending) {
            sortedArray[i+1] = sortedArray[i];
            i--;
        }
        sortedArray[i+1] = key;
    }
    
    return [sortedArray copy];
}

@end
