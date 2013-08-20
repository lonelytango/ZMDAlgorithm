//
//  NSArray+Addition.m
//  ZMDAlgorithm
//
//  Created by Zian Chen on 8/20/13.
//  Copyright (c) 2013 Zian Mobile Development. All rights reserved.
//

#import "NSArray+Addition.h"

@implementation NSArray (Addition)

- (NSString *)oneLineDescription {
    NSMutableString *descriptionString = [NSMutableString new];
    for (int i = 0; i < [self count]; i++) {
        [descriptionString appendFormat:@"%@",self[i]];
        if (i < [self count] - 1) {
            [descriptionString appendString:@", "];
        }
    }
    return [descriptionString copy];
}

- (NSInteger)lastIndex {
    return [self count] - 1;
}


@end
