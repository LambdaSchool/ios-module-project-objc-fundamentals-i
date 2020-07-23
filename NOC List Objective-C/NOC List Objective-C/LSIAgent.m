//
//  LSIAgent.m
//  NOC List Objective-C
//
//  Created by Gerardo Hernandez on 7/22/20.
//  Copyright © 2020 Gerardo Hernandez. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

//Initializer
- (instancetype)initWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)compromised
{
    if (self = [super init]) {
        self.coverName = coverName;
        self.realName = realName;
        self.accessLevel = @(accessLevel);
        self.compromised = [NSNumber numberWithBool:compromised];
    }
    
    return self;
}


@end
