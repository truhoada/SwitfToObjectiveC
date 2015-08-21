//
//  SwiftToObjCBasicView.m
//  ObjCExamples
//
//  Created by admin on 8/16/15.
//  Copyright (c) 2015 hoangdangtrung. All rights reserved.
//

#import "SwiftToObjCBasicView.h"

@interface SwiftToObjCBasicView ()
@property (weak, nonatomic) IBOutlet UIView *viewRect;
@property (weak, nonatomic) IBOutlet UISlider *alphaSliderValue;
@property (weak, nonatomic) IBOutlet UISlider *rotateSliderValue;
@property (weak, nonatomic) IBOutlet UISlider *scaleSliderValue;

@end

@implementation SwiftToObjCBasicView


- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void) rotateAndScaleViewRect {
    self.viewRect.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(self.scaleSliderValue.value, self.scaleSliderValue.value), CGAffineTransformMakeRotation(self.rotateSliderValue.value*M_PI));
}

- (IBAction)showSwitch:(id)sender {
    self.viewRect.hidden = ![sender isOn];
}

- (IBAction)alphaSlider:(id)sender {
    self.viewRect.alpha = self.alphaSliderValue.value;
}

- (IBAction)rotateSlider:(id)sender {
    [self rotateAndScaleViewRect];
}

- (IBAction)scaleSlider:(id)sender {
    [self rotateAndScaleViewRect];
}

- (IBAction)changeColorButton:(id)sender {
    switch ([sender selectedSegmentIndex]) {
        case 0:
            self.viewRect.backgroundColor = [UIColor blackColor];
            break;
        case 1:
            self.viewRect.backgroundColor = [UIColor redColor];
            break;
        case 2:
            self.viewRect.backgroundColor = [UIColor greenColor];
            break;
        case 3:
            self.viewRect.backgroundColor = [UIColor blueColor];
            break;
    }
    
}



@end












