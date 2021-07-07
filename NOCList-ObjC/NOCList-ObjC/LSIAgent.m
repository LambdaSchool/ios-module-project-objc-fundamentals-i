//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Dahna on 7/13/20.
//  Copyright © 2020 Dahna Buenrostro. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype)initWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)compromised
{
    self = [super init];
    if (self != nil) {
        _coverName = coverName;
        _realName = realName;
        _accessLevel = @(accessLevel);
        _compromised = @(compromised);
        
    }
    return self;
}

@end
