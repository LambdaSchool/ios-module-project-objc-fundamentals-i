//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Matthew Martindale on 7/22/20.
//  Copyright © 2020 Matthew Martindale. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype)initCoverName:(NSString *)coverName andRealName:(NSString *)realName andAccessLevel:(int)accessLevel andCompromised:(BOOL)compromised
{
    if (self = [super init]) {
        self.coverName = coverName;
        self.realName = realName;
        self.accessLevel = [NSNumber numberWithInt:accessLevel];
        self.compromised = [NSNumber numberWithBool:compromised];
    }
    return self;
}

@end
