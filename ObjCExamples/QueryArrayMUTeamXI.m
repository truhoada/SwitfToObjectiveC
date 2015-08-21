//
//  QueryArrayMUTeamXI.m
//  ObjCExamples
//
//  Created by admin on 8/6/15.
//  Copyright (c) 2015 hoangdangtrung. All rights reserved.
//

#import "QueryArrayMUTeamXI.h"
#import "ManUtdTeamData.h"

@implementation QueryArrayMUTeamXI

- (void)viewDidLoad {
    [super viewDidLoad];
    //    NSLog(@"Hello World!");
    //    [self write:@"Hello World!"]; // not \n
    //    [self writeln:@"Hello World!"]; // \n
    //    [self writeln:@"Hello World!"];
    
    //    ManUtdTeamData *player1 = [[ManUtdTeamData alloc] initFullNamePlayer:@"David DeGea" andSquadNumberPlayer:@1 andPositionPlayer:@"GK" andNationality:@"Espanol" andYearOfBirth:@1991];
    //    ManUtdTeamData *player2 = [[ManUtdTeamData alloc] initFullNamePlayer:@"Rafael Da Silva" andSquadNumberPlayer:@2 andPositionPlayer:@"RB" andNationality:@"Brasil" andYearOfBirth:@1992];
    int i = arc4random_uniform(3);
    NSLog(@"i=%d",i);
   
        [self writeln:@"FirstSquad:\n"];
        NSArray* arrayPlayer = [NSArray arrayWithContentsOfFile: [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"MUTeam%d",i] ofType:@"plist"]];
        for (NSDictionary* item in arrayPlayer) {
            NSString* showPlayerList = [NSString stringWithFormat:@"%@. %@  %@ ", item[@"Number"], item[@"Position"],item[@"Name"]];
            [self writeln:showPlayerList];
        }
        [self writeln:@"\nSub:\n"];
        NSArray* arrayPlayerSub = [NSArray arrayWithContentsOfFile: [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"MUTeam%dSub",i] ofType:@"plist"]];
        for (NSDictionary* item in arrayPlayerSub) {
            NSString* showPlayerListSub = [NSString stringWithFormat:@"%@. %@  %@ ", item[@"Number"], item[@"Position"],item[@"Name"]];
            [self writeln:showPlayerListSub];
        }

    }

@end
