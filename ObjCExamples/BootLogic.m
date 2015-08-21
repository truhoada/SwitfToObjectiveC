//
//  BootLogic.m
//  TechmasterApp
//
//  Created by techmaster on 9/7/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

#import "BootLogic.h"
#import "MainScreen.h"

@implementation BootLogic
+ (void) boot: (UIWindow*) window
{
    MainScreen* mainScreen = [[MainScreen alloc] initWithStyle:UITableViewStyleGrouped];
    //--------- From this line, please customize your menu data -----------
    NSDictionary* basic = @{SECTION: @"Basic", MENU: @[
//                                    @{TITLE: @"Function", CLASS: @"DemoFunction"},
                                    @{TITLE: @"SwiftToObjC BasicView", CLASS: @"SwiftToObjCBasicView"},
                                    @{TITLE: @"SwiftToObjC ChessView", CLASS: @"SwiftToObjC"},
//                                    @{TITLE: @"Selector", CLASS: @"DemoSelector"},
//                                    @{TITLE: @"ClassLoaiNguoi", CLASS: @"ClassLoaiNguoi"}

                          ]};
    NSDictionary* array = @{SECTION: @"Array", MENU: @[
//                                    @{TITLE: @"CreateArray", CLASS: @"CreateArray"},
//                                    @{TITLE: @"QueryArray", CLASS: @"QueryArray"},
//                                    @{TITLE: @"QueryArrayHomeWork", CLASS: @"QueryArrayMUTeamXI"},
//                                    @{TITLE: @"Send Message", CLASS: @"SendMessage"},
//                                    @{TITLE: @"Integer2String", CLASS: @"NSIntegerToNSString"},
//                                    @{TITLE: @"C Array", CLASS: @"CArray"},
//                                    @{TITLE: @"QSortNumberArray8x8", CLASS: @"QuickSortArrayNatureNumber"},
//                                    @{TITLE: @"QSortStringArrayAtoZ", CLASS: @"QuickSortStringAtoZ"}




                                    ]};

    
    NSDictionary* intermediate = @{SECTION: @"Intermediate", MENU: @[
                                    @{TITLE: @"Inter B", CLASS: @"InterB"}
                                  ]};
    NSDictionary* advanced = @{SECTION: @"Advanced", MENU: @[
                                    @{TITLE: @"Advanced C", CLASS: @"AdvancedC"}
                             ]};
    
    
    mainScreen.menu = @[basic, array, intermediate, advanced];
    mainScreen.title = @"Bootstrap App";
    mainScreen.about = @"This is demo bootstrap demo app. It is collection of sample code of AVFoundation";
    //--------- End of customization -----------
    UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController: mainScreen];
    
    window.rootViewController = nav;
}
@end
