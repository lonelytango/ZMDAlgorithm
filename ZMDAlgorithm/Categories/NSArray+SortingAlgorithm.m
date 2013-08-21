//
//  NSArray+SortingAlgorithm.m
//  ZMDAlgorithm
//
//  Created by Zian Chen on 8/19/13.
//  Copyright (c) 2013 Zian Mobile Development. All rights reserved.
//

#import "NSArray+SortingAlgorithm.h"
#import "NSArray+Addition.h"

@implementation NSArray (SortingAlgorithm)


#pragma mark - Insertion Sort

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





#pragma mark - Quick Sort

- (NSArray *)quickSort {
    NSMutableArray *mutableArray = [self mutableCopy];
    
    //Mutable self would always retain the value (always passed by reference)
    [self qsortArray:mutableArray begin:0 end:[self lastIndex]];
    
    return [mutableArray copy];
}


- (void)qsortArray:(NSMutableArray *)array begin:(NSInteger)begin end:(NSInteger)end {
    if (begin < end) {
        int pivotIndex = [self partitionWithArray:array begin:begin end:end];
        [self qsortArray:array begin:begin end:pivotIndex-1];
        [self qsortArray:array begin:pivotIndex+1 end:end];
    }
}


- (NSInteger)partitionWithArray:(NSMutableArray *)array begin:(NSInteger)begin end:(NSInteger)end {
    
    id pivot = array[begin];
    int i = begin;
    
    //NSLog(@"Pivot: %@", pivot);
    
    for (int j = i + 1; j <= end; j++) {
        
        if ([array[j] compare:pivot] == NSOrderedAscending || [array[j] compare:pivot] == NSOrderedSame) {
            //NSLog(@"Swap: %@ @ [%d] and %@ @ [%d]", array[i], i, array[j], j);
            i += 1;
            [array exchangeObjectAtIndex:i withObjectAtIndex:j];
        }
    }
    
    if (begin != i) {
        [array exchangeObjectAtIndex:begin withObjectAtIndex:i];
    }
    
    //NSLog(@"Step: %@, Begin: %d, End: %d", [array oneLineDescription], begin, end);
    //NSLog(@"================================================================");
    
    return i;
}




#pragma mark - Heap Sort

- (NSArray *)heapSort {
    NSMutableArray *mutableArray = [self mutableCopy];
    
    //Heapify the array so it's ready to be sorted.
    [self heapifyArray:mutableArray];
    
    //NSLog(@"Heapified: %@", [mutableArray oneLineDescription]);
    
    int end = [mutableArray count] - 1;
    
    while (end > 0) {
        [mutableArray exchangeObjectAtIndex:end withObjectAtIndex:0];
        
        //NSLog(@"Sift Down Desc: %@", [mutableArray oneLineDescription]);
        
        end -= 1;
        
        [self siftDown:mutableArray start:0 end:end];
    }
    return [mutableArray copy];
}

- (void)siftDown:(NSMutableArray *)array start:(NSInteger)start end:(NSInteger)end {
    
    int root = start;
    while (root * 2 + 1 <= end) {
        
        int child = root * 2 + 1;
        int swap = root;
        
        //Check if root is less than the left child.
        if ([array[swap] compare:array[child]] == NSOrderedAscending) {
            swap = child;
        }
        
        //Check right child too, if it exists.
        if (child + 1 <= end && ([array[swap] compare:array[child + 1]] == NSOrderedAscending)) {
            swap = child + 1;
        }
        
        //Swap it if the root is less than child.
        if (swap != root) {
            [array exchangeObjectAtIndex:root withObjectAtIndex:swap];
            root = swap;
        } else {
            return;
        }
    }
}

- (void)heapifyArray:(NSMutableArray *)array {
    int arrayCount = [array count];
    int start = (arrayCount - 2) / 2;
    
    while (start >= 0) {
        [self siftDown:array start:start end:arrayCount - 1];
        //NSLog(@"Heap Step Desc: %@", [array oneLineDescription]);
        start -= 1;
    }
}


@end