//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Jarren Campos on 7/22/20.
//  Copyright © 2020 Jarren Campos. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype)initAgentWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLevel:(int)accessLevel isCompromised:(BOOL)isCompromised
{
    
    self = [super init];
    if(self != nil) {
        _coverName = coverName;
        _realName = realName;
        NSNumber *intAccessLevel = [NSNumber numberWithInt:accessLevel];
        _accessLevel = intAccessLevel;
        NSNumber *boolAsNumber = [NSNumber numberWithBool:isCompromised];
        _isCompromised = boolAsNumber;

    }
    return self;
}

@end
