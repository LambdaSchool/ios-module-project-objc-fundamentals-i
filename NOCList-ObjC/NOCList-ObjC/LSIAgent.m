//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Sean Acres on 7/22/20.
//  Copyright © 2020 Sean Acres. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype)initWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)compromised
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
