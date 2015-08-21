//
//  QuickSortArrayNatureNumber.m
//  ObjCExamples
//
//  Created by admin on 8/14/15.
//  Copyright (c) 2015 hoangdangtrung. All rights reserved.
//

#import "QuickSortArrayNatureNumber.h"

@interface QuickSortArrayNatureNumber ()

@end

@implementation QuickSortArrayNatureNumber

- (void)viewDidLoad {
    [super viewDidLoad];
    NSNumber *ten = @10; // to print: 00, 01, 02 ...09
    [self writeln:@"Unsort Array nxm 8x8:\n"];
    int n=12, m=3;
    // Create Array 8x8
    NSMutableArray *unSortArray8x8 = [[NSMutableArray alloc] init];
    for (int i=0; i<n; i++) {
        for (int j=0; j<m; j++) {
            int intArrayValue = arc4random_uniform(100);
            NSNumber *numberArrayValue = [NSNumber numberWithInt:intArrayValue];
            [unSortArray8x8 addObject:numberArrayValue];
            if (numberArrayValue<ten) {
                [self write:[NSString stringWithFormat:@"0%@ ",numberArrayValue]]; // to print: 00, 01, 02 ...09
            } else {
                [self write:[NSString stringWithFormat:@"%@ ",numberArrayValue]];
            }
            if (j == m-1) {
                [self writeln:@""];
            }
        }
    }
    
    [self writeln:@"\n"];
    [self writeln:@"Sorted Array 8x8:\n"];
    
    // Sort Array 8x8
    NSArray *sortedArray8x8 = [self quickSort:unSortArray8x8];
    for (int i=0; i<sortedArray8x8.count; i++) {
        if ((i>0)&&(i%m == 0)) {
            [self writeln:@""];
        }
        if ([sortedArray8x8 objectAtIndex:i]<ten) {
            [self write:[NSString stringWithFormat:@"0%@ ",[sortedArray8x8 objectAtIndex:i]]]; // to print: 00,01,..09
        } else {
            [self write:[NSString stringWithFormat:@"%@ ",[sortedArray8x8 objectAtIndex:i]]];
        }
    }
}

/* Qicksort Array Function*/
- (NSArray*) quickSort: (NSMutableArray*) unsortedDataArray {
    NSMutableArray *smallerArray = [[NSMutableArray alloc] init];
    NSMutableArray *largerArray = [[NSMutableArray alloc] init];
    if ([unsortedDataArray count] <1 ) {
        return nil;
    }
    int randomPivitPoint = arc4random() % [unsortedDataArray count];
    NSNumber *pivotValue = [unsortedDataArray objectAtIndex:randomPivitPoint];
    [unsortedDataArray removeObjectAtIndex:randomPivitPoint];
    for (NSNumber *num in unsortedDataArray) {
        if (num < pivotValue) {
            [smallerArray addObject:num];
        }
        else {
            [largerArray addObject:num];
        }
    }
    NSMutableArray *sortedArray = [[NSMutableArray alloc] init];
    [sortedArray addObjectsFromArray:[self quickSort:smallerArray]];
    [sortedArray addObject:pivotValue];
    [sortedArray addObjectsFromArray:[self quickSort:largerArray]];
    return sortedArray;
}

@end













