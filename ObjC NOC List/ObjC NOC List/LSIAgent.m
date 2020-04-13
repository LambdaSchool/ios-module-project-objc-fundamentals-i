//
//  LSIAgent.m
//  ObjC NOC List
//
//  Created by Chris Gonzales on 4/13/20.
//  Copyright © 2020 Chris Gonzales. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent


- (instancetype)initWithCodeName:(NSString *)codeName
                        RealName:(NSString *)realName
                     AccessLevel:(int)accessLevel
                   IsCompromised:(BOOL)isCompromised {
    self = [super init];
    if (self) {
        _codeName = codeName;
        _realName = realName;
        _accessLevel = [NSNumber numberWithInt: accessLevel];
        _isCompromised = [NSNumber numberWithInt: isCompromised];
    }
    return self;
}


@end
