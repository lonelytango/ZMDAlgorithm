//
//  NSArray+SearchAlgorithm.m
//  ZMDAlgorithm
//
//  Created by Zian Chen on 8/20/13.
//  Copyright (c) 2013 Zian Mobile Development. All rights reserved.
//

#import "NSArray+SearchAlgorithm.h"

@implementation NSArray (SearchAlgorithm)

- (NSInteger)binarySearchForIndexOfObject:(id)object {
    
    NSInteger key = [self binarySearch:object inArray:self];
    NSLog(@"binary search key: %d", key);
    
    return key;
}

- (NSInteger)binarySearch:(id)object inArray:(NSArray *)array {
    
    NSInteger minIndex = 0;
    NSInteger maxIndex = [array count] - 1;
    
    while (maxIndex >= minIndex) {
        NSInteger midIndex = (maxIndex + minIndex) / 2;
        
        if ([array[midIndex] compare:object] == NSOrderedAscending) {
            minIndex = midIndex + 1;
        } else if ([array[midIndex] compare:object] == NSOrderedDescending) {
            maxIndex = midIndex - 1;
        } else {
            return midIndex;
        }
    }
    
    return NSNotFound;
}


@end