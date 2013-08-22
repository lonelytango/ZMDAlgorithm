//
//  NSArray+SortingAlgorithm.h
//  ZMDAlgorithm
//
//  Created by Zian Chen on 8/19/13.
//  Copyright (c) 2013 Zian Mobile Development. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (SortingAlgorithm)

- (NSArray *)insertionSort;
- (NSArray *)mergeSort;
- (NSArray *)quickSort;
- (NSArray *)heapSort;
- (NSArray *)treeSort;

//This unoptimized bubble sort, which has an extra step at the end to make sure things are sorted.
- (NSArray *)bubbleSort;
- (NSArray *)bubbleSortSkipLastItem;
- (NSArray *)bubbleSortTrackLastItem;


@end
