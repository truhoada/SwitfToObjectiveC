//
//  NSIntegerToNSString.m
//  ObjCExamples
//
//  Created by admin on 8/13/15.
//  Copyright (c) 2015 hoangdangtrung. All rights reserved.
//

#import "NSIntegerToNSString.h"

@interface NSIntegerToNSString ()

@end

@implementation NSIntegerToNSString

- (void)viewDidLoad {
    [super viewDidLoad];
    [self integerToString];
    
}

- (void) integerToString {
    int n = 5 + arc4random_uniform(20);
    int arrInteger[n];
    
    for (int i=0; i<n; i++) {
        arrInteger[i] = arc4random_uniform(1000);
        
        NSString *spellNumber;
        NSNumber *numberValue = [NSNumber numberWithInt:arrInteger[i]];
        
        NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
        numberFormatter.numberStyle = NSNumberFormatterSpellOutStyle;
        spellNumber = [numberFormatter stringFromNumber:numberValue];
        [self writeln:[NSString stringWithFormat:@"%d %@\n",arrInteger[i], spellNumber]];
    }
    
}

@end
