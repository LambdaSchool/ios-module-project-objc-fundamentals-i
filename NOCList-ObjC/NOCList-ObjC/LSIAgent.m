//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Elizabeth Thomas on 9/16/20.
//  Copyright © 2020 Libby Thomas. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype)initWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLvel:(int)accessLevel compromised:(BOOL)compromised
{
    if (self = [super init]) {
        self.coverName = coverName;
        self.realName = realName;
        self.accessLevel = [NSNumber numberWithInt: accessLevel];
        self.compromised = [NSNumber numberWithBool: compromised];
    }
    return self;
}

- (void)discoverCompromisedAgents:(NSArray *)agents
{
    int compromisedAgents = 0;

    for (LSIAgent *agent in agents) {
        if (agent.compromised.boolValue) {
            compromisedAgents++;
        }
    }
    NSLog(@"Number of compromised agents: %d", compromisedAgents);
}

- (void)findCleanAgents:(NSArray *)agents
{
    int cleanAgents = 0;

    for (LSIAgent *agent in agents) {
        if (!agent.compromised.boolValue) {
            cleanAgents++;
            NSLog(@"Agent is clean: %@", agent.coverName);
        }
    }

    NSLog(@"Number of clean agents: %d", cleanAgents);
}

- (void)determineHighRiskAgents:(NSArray *)agents
{
    for (LSIAgent *agent in agents) {
        int agentAccessLevel = agent.accessLevel.intValue;

        if (agentAccessLevel >= 8 && agent.compromised.boolValue) {
            NSLog(@"%@, level %@ clearance. **WARNING**COMPROMISED**",
                  agent.realName,
                  agent.accessLevel);
        } else if (agentAccessLevel >= 8) {
            NSLog(@"%@, level %@ clearance",
                  agent.realName,
                  agent.accessLevel);
        }
    }
}

- (void)filterAgentByAccessLevel:(NSArray *)agents
{
    int lowLevelAgents = 0;
    int midLevelAgents = 0;
    int highLevelAgents = 0;
    
    for (LSIAgent *agent in agents) {
        int agentAccessLevel = agent.accessLevel.intValue;

        if (agentAccessLevel >= 8) {
            highLevelAgents++;
        } else if (agentAccessLevel >= 5 && agentAccessLevel <= 7) {
            midLevelAgents++;
        } else if (agentAccessLevel <= 4) {
            lowLevelAgents++;
        }
    }
    NSLog(@"%d low level agents, %d mid level agents, and %d high level agents", lowLevelAgents, midLevelAgents, highLevelAgents);
}

@end
