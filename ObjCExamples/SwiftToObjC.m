//
//  SwiftToObjC.m
//  ObjCExamples
//
//  Created by admin on 8/16/15.
//  Copyright (c) 2015 hoangdangtrung. All rights reserved.
//

#import "SwiftToObjC.h"

@interface SwiftToObjC ()
{
    UIView *containerView;
    UIView *cell;
    UISlider *slider;

}
@end

@implementation SwiftToObjC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    
    //Create Chess Table
    CGFloat margin = 10.0;
    containerView =[[UIView alloc] init];
    containerView.backgroundColor = [UIColor blackColor];
    containerView.frame = CGRectMake(0, 0, self.view.bounds.size.width - margin*2.0,self.view.bounds.size.width - margin*2.0);
    containerView.center = CGPointMake(self.view.bounds.size.width/2.0, self.view.bounds.size.height/2.0);
    [self.view addSubview:containerView];
    
    printf("width = %.f, height = %.f",containerView.bounds.size.width,containerView.bounds.size.height);
    
    CGFloat cellWidth = (self.view.bounds.size.width - margin * 2.0) / 8.0;
    for (int row=0; row<8; row++) {
        for (int col=0; col<8 ; col++) {
            cell = [[UIView alloc] init];
            cell.frame = CGRectMake(cellWidth*row, cellWidth*col, cellWidth, cellWidth);
            if (((row%2==0)&&(col%2==0))||((row%2==1)&&(col%2==1))) {
                cell.backgroundColor = [UIColor blackColor];
            } else {
                cell.backgroundColor = [UIColor whiteColor];
            }
            [containerView addSubview:cell];
        }
    }

    // Create Slider
    slider = [[UISlider alloc] initWithFrame:CGRectMake(20, self.view.bounds.size.height-200, 300, 10)];
    slider.maximumValue = 1;
    slider.minimumValue = -1;
    slider.value = 0;
    slider.center = CGPointMake(self.view.bounds.size.width/2, self.view.bounds.size.height-100);
    [self.view addSubview:slider];
    [slider addTarget:self action:@selector(sliderChange) forControlEvents:UIControlEventValueChanged];
}

- (void) sliderChange {
    containerView.transform = CGAffineTransformMakeRotation(M_PI*slider.value);
}

@end
