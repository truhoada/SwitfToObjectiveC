//
//  SendMessage.m
//  ObjCExamples
//
//  Created by admin on 8/12/15.
//  Copyright (c) 2015 hoangdangtrung. All rights reserved.
//

#import "SendMessage.h"
#import "Student.h"

@interface SendMessage ()

@end

@implementation SendMessage

- (void)viewDidLoad {
    [super viewDidLoad];
    Student* a = [[Student alloc] init:@"John Kim" and:@"01"];
    Student* b = [[Student alloc] init:@"Jack Ma" and:@"02"];
    Student* c = [[Student alloc] init:@"James Hall" and:@"03"];
    NSArray *arrayStudent = @[a,b,c,@3.14];
//    [arrayStudent makeObjectsPerformSelector:@selector(sayYourName)];
    [arrayStudent enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        if ([obj respondsToSelector:@selector(sayYourName)]) {
            [obj sayYourName];
        }
    }];
    
}



@end
