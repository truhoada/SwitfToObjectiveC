//
//  ManUtdTeamData.m
//  ObjCExamples
//
//  Created by admin on 8/6/15.
//  Copyright (c) 2015 hoangdangtrung. All rights reserved.
//

#import "ManUtdTeamData.h"

@implementation ManUtdTeamData

- (instancetype) initFullNamePlayer:(NSString *)fullName
               andSquadNumberPlayer:(NSNumber *)squadNumber
                  andPositionPlayer:(NSString *)positionPlayer{

    if (self = [super init]) {
        self.fullNamePlayer = fullName;
        self.squadNumberPlayer = squadNumber;
        self.positionPlayer = positionPlayer;
        NSLog(@"%@",fullName);
    }
    return self;
}

@end
