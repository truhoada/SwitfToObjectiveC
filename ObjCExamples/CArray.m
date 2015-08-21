//
//  CArray.m
//  ObjCExamples
//
//  Created by admin on 8/14/15.
//  Copyright (c) 2015 hoangdangtrung. All rights reserved.
//

#import "CArray.h"

@interface CArray ()

@end

@implementation CArray

- (void)viewDidLoad {
    [super viewDidLoad];
    [self demoCArray];
    
    NSArray *objCArray = @[@1,@2,@3,@4,@7];
    NSNumber *cArrNumbers[5] = {@1,@2,@3,@4,@6};
    
    for (id num in objCArray) { //NSArray
        NSLog(@"%d",[num intValue]+10);
    }
    
    for (int i=0; i<5; i++) {  // CArray
        NSLog(@"cArrNumbers[%d] = %d",i,[cArrNumbers[i] intValue]+10);
    }
    
}

- (void) demoCArray {
    int n[10];
    int i,j;
    for (i=0; i<10; i++) {
        n[i] = i + 100;
    }
    for (j=0; j<10; j++) {
        printf("n[%d] = %d\n",j,n[j]);
//        NSLog(@"n[%d] = %d",j,n[j]);
    }
}

@end







