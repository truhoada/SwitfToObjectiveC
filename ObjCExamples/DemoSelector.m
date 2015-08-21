//
//  DemoSelector.m
//  ObjCExamples
//
//  Created by admin on 7/30/15.
//  Copyright (c) 2015 hoangdangtrung. All rights reserved.
//

#import "DemoSelector.h"

@interface DemoSelector ()
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation DemoSelector

- (void)viewDidLoad {
    [super viewDidLoad];
    [self performSelector:@selector(hiddenSlider) withObject:nil afterDelay:4];
    [self performSelector:@selector(showSlider) withObject:nil afterDelay:7];
    
}

- (IBAction)btnCrunchData:(id)sender {
//    [self performSelector:@selector(doCrunchData)];
    [self performSelectorOnMainThread:@selector(processData:) withObject:@{@"apple": @"táo", @"lemon": @"chanh"} waitUntilDone: true];
}

- (void) doCrunchData {
    [NSThread sleepForTimeInterval:3];
}

- (void) hiddenSlider {
    self.slider.hidden = true;
}

- (void) showSlider {
    self.slider.hidden = false;
}

- (void) processData: (NSDictionary*) data {
    for (NSString* key in [data allKeys]) {
        NSLog(@"%@ - %@", key, [data valueForKey:key]);
    }
}
@end
