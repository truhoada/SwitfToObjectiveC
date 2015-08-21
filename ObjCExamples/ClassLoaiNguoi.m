//
//  ClassLoaiNguoi.m
//  ObjCExamples
//
//  Created by admin on 8/6/15.
//  Copyright (c) 2015 hoangdangtrung. All rights reserved.
//

#import "ClassLoaiNguoi.h"

@implementation ClassLoaiNguoi


-(void)DiHoc {
    NSLog(@"%@ dang di hoc", _ten);
}

-(void)ganTen:(NSString*)ten vaTuoi:(int)tuoi {
    _ten = ten;
    _tuoi = tuoi;
}

-(void)setTuoi:(int)tuoi{
    _tuoi = tuoi;
}

-(int)getTuoi{
    return _tuoi;
}

-(void)setTen:(NSString*)ten{
    _ten = ten;
}

-(NSString*)getTen{
    return _ten;
}

@end

