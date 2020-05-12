//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Mark Gerrior on 5/11/20.
//  Copyright © 2020 Mark Gerrior. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype)initWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)compromised {
    self = [super init];
    _coverName = coverName;
    _realName = realName;
    _accessLevel = [NSNumber numberWithInt:accessLevel];
    _compromised = [NSNumber numberWithBool:compromised];
    return self;
}

@end
