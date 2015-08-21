//
//  ClassLoaiNguoi.h
//  ObjCExamples
//
//  Created by admin on 8/6/15.
//  Copyright (c) 2015 hoangdangtrung. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface ClassLoaiNguoi : NSObject {
    NSString *_ten;
    int _tuoi;
}

-(void)DiHoc;
-(void)ganTen:(NSString*)ten vaTuoi:(int)tuoi;
-(void)setTuoi:(int)tuoi;
-(int)getTuoi;
-(void)setTen:(NSString*)ten;
-(NSString*)getTen;

@end