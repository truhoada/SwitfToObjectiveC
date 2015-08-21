//
//  QuickSortStringAtoZ.m
//  ObjCExamples
//
//  Created by admin on 8/16/15.
//  Copyright (c) 2015 hoangdangtrung. All rights reserved.
//

#import "QuickSortStringAtoZ.h"

@interface QuickSortStringAtoZ ()

@end

@implementation QuickSortStringAtoZ

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray *unSortStringArray = [NSMutableArray arrayWithObjects:@"ggggh06", @"uuuut12", @"rrrrb10", @"rrrra09", @"nnnnn07",@"vvvvv13",@"dddww05",@"dddda04",@"sssss11",@"yyyyy14",@"aaaaa01",@"bbbbb02",@"qqqqq08",@"ccccc03", nil];
    
    //SuperQuickSort
    NSArray *sortedStringArray = [unSortStringArray sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
    NSLog(@"%@",sortedStringArray);
    
    
    //QuickSort
    [self writeln:@"\t\t UNSORT    --    SORTED\n\t\t ======================\n\n"];

    NSArray *quickSortedArray = [self quickSort:unSortStringArray];
    for (int i=0; i<unSortStringArray.count; i++) {
        [self write:[NSString stringWithFormat:@"\t\t %@   --   ",[unSortStringArray objectAtIndex:i]]];
        [self writeln:[NSString stringWithFormat:@"%@\n",[quickSortedArray objectAtIndex:i]]];
    }
}

/* Qicksort String Array Function*/
- (NSArray*) quickSort: (NSMutableArray*) unsortedStringArray {
    NSMutableArray *frontStringArray = [[NSMutableArray alloc] init];
    NSMutableArray *behindStringArray = [[NSMutableArray alloc] init];
    if ([unsortedStringArray count] < 1) {
        return nil;
    }
    int randomPivotPoint = arc4random() % [unsortedStringArray count];
    NSString *pivotString = [unsortedStringArray objectAtIndex:randomPivotPoint];
    //    [unsortedStringArray removeObjectAtIndex:randomPivotPoint];
    for (NSString *str in unsortedStringArray) {
        if (str != pivotString) {
            NSComparisonResult compare = [str compare: pivotString];
            if (compare == NSOrderedAscending) {
                [frontStringArray addObject:str];
            }
            else {
                [behindStringArray addObject:str];
            }
        }
    }
    NSMutableArray *sortedStringArray = [[NSMutableArray alloc] init];
    [sortedStringArray addObjectsFromArray:[self quickSort:frontStringArray]];
    [sortedStringArray addObject:pivotString];
    [sortedStringArray addObjectsFromArray:[self quickSort:behindStringArray]];
    return sortedStringArray;
}


@end








