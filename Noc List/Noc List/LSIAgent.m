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

+(int)numberOfCleanAgentsInArray:(NSArray *)agents
{
    int cleanAgentCount = 0;
    
    for (int i = 0; i<agents.count; i++)
    {
        LSIAgent *agent = agents[i];
        if (agent.isCompromised.boolValue == NO)
        {
            NSLog(@"Agent %@ is clean", agent.coverName);
            cleanAgentCount += 1;
        }
    }
    
    return cleanAgentCount;
}

+(void)printHighRiskAgentsInArray:(NSArray *)agents
{
    for (LSIAgent *agent in agents)
    {
        if (agent.accessLevel.intValue >= 8)
        {
            NSMutableString *agentString = [[NSMutableString alloc] init];
            [agentString appendFormat:@"%@, level:%@", agent.realName, agent.accessLevel];
            
            if (agent.isCompromised.boolValue == TRUE)
            {
                [agentString appendString:@" *** WARNING COMPROMISED ***"];
            }
            NSLog(@"%@", agentString);
        }
    }
}

+(AgentCounts)countLowMidHighRiskAgentsInArray:(NSArray *)agents
{
    AgentCounts counts;
    counts.lowLevel = 0;
    counts.midLevel = 0;
    counts.highLevel = 0;
    
    
    for (LSIAgent *agent in agents)
    {
        if (agent.accessLevel <= 4)
        {
            counts.lowLevel++;
        } else if (5 <= agent.accessLevel.intValue && agent.accessLevel.intValue < 7)
        {
            counts.midLevel++;
        } else if (8 <= agent.accessLevel.intValue)
        {
            counts.highLevel++;
        }
    }
    
    return counts;
}
@end
