//
//  LSIAgent.m
//  Noc List
//
//  Created by Alex Thompson on 5/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

-(instancetype)initAgentWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLevel:(int)accessLevel isCompromised:(BOOL)isCompromised
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

+(int)numberOfCompromisedAgentsInArray:(NSArray *)agents
{
    int compromisedAgentCount = 0;
    
    for (LSIAgent *agent in agents)
    {
        if (agent.isCompromised.boolValue == YES)
        {
            compromisedAgentCount++;
        }
    }
    
    return compromisedAgentCount;
}
@end
