//
//  LSIAgent.m
//  Noc List
//
//  Created by Alex Thompson on 5/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

-(instancetype)initAgentWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLevel:(NSString *)accessLevel isCompromised:(BOOL)isCompromised
{
    self = [super init];
    if (self != nil)
    {
        _coverName = coverName;
        _realName = realName;
        _accessLevel = [NSNumber numberWithInt:accessLevel];
        _isCompromised = [NSNumber numberWithBool:isCompromised];
    }
    
    return self;
}
@end
