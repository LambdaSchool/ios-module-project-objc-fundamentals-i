//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Harmony Radley on 7/14/20.
//  Copyright © 2020 Harmony Radley. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype)initWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)compromised
{
    self = [super init];
    if (self != nil) {
        // self.coverName = coverName
        _coverName = coverName;
        _realName = realName;
        _accessLevel = [NSNumber numberWithInt:accessLevel];
        _compromised = [NSNumber numberWithBool:compromised];
    }
    return self;
}

@end
