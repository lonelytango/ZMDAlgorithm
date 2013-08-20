//
//  NSArray+SortingAlgorithm.h
//  ZMDAlgorithm
//
//  Created by Zian Chen on 8/19/13.
//  Copyright (c) 2013 Zian Mobile Development. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (SortingAlgorithm)

/**
 *	InsertionSort
 *
 *	@return	sorted array after insertion sort.
 *  
 *  Worst case scenario is when the array is reverse sorted.
 *  Moderately fast for small n, not at all for large n.
 */

- (NSArray *)insertionSort;

/**
 *	MergeSort
 *
 *	@return	sorted array after merge sort.
 */

- (NSArray *)mergeSort;

/**
 *	Quick Sort
 *
 *	@return	sorted array after quick sort.
 */
- (NSArray *)quickSort;

@end
