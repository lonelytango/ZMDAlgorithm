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




#pragma mark - Merge Sort

- (NSArray *)mergeSort {
    
    if ([self count] <= 1) {
        return self;
    }
    
    NSArray *array1, *array2;
    //If array count is odd
    
    NSInteger arrayHalfSize = [self count] / 2;
    
    if ([self count] % 2 == 1) {
        array1 = [self subarrayWithRange:NSMakeRange(0, arrayHalfSize + 1)];
        array2 = [self subarrayWithRange:NSMakeRange(arrayHalfSize + 1, arrayHalfSize)];
        
    } else {
        array1 = [self subarrayWithRange:NSMakeRange(0, arrayHalfSize)];
        array2 = [self subarrayWithRange:NSMakeRange(arrayHalfSize, arrayHalfSize)];
    }
    
    return [self mergeArray1:[array1 mergeSort] withArray2:[array2 mergeSort]];
}

- (NSArray *)mergeArray1:(NSArray *)array1 withArray2:(NSArray *)array2 {
    
    NSMutableArray *mutableArray1 = [array1 mutableCopy];
    NSMutableArray *mutableArray2 = [array2 mutableCopy];
    NSMutableArray *mergedArray = [NSMutableArray new];
    
    while ([mutableArray1 count] > 0 && [mutableArray2 count] > 0) {
        if ([mutableArray1[0] compare:mutableArray2[0]] == NSOrderedAscending) {
            [mergedArray addObject:mutableArray1[0]];
            [mutableArray1 removeObjectAtIndex:0];
        } else {
            [mergedArray addObject:mutableArray2[0]];
            [mutableArray2 removeObjectAtIndex:0];
        }
    }
    
    if ([mutableArray1 count] > 0) {
        [mergedArray addObjectsFromArray:mutableArray1];
    }
    
    if ([mutableArray2 count] > 0) {
        [mergedArray addObjectsFromArray:mutableArray2];
    }
    
    return [mergedArray copy];
}

@end
