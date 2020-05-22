//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by denis cedeno on 5/21/20.
//  Copyright © 2020 DenCedeno Co. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype)initAgentCoverName:(NSString *)coverName
                 initAgentRealName:(NSString *)realName
                   initAccessLevel:(int)accessLevel
                   initCompromised:(BOOL)isCompromised {
    if (self = [super init]) {
        self.coverName = coverName;
        self.realName = realName;
        self.accessLevel = [NSNumber numberWithInt: accessLevel];
        self.isCompromised = [NSNumber numberWithInt: isCompromised];
    }
    return self;
}

- (void)agentIsClean:(NSArray *)cleanAgents
{
    NSLog(@"------------------Clean Agents---------------------------------");
    
    int cleanAgentCount = 0;
    
    for (LSIAgent *agent in cleanAgents) {
        if(agent.isCompromised.boolValue == FALSE){
            cleanAgentCount++;
            NSLog(@"Agent %@ is clean", agent.coverName);
        }
    }
    NSLog(@"There are %i clean agents.", cleanAgentCount);
}

- (void)compromisedAgentCount:(NSArray *)compromisedAgents
{
    NSLog(@"------------------Compromised Agents---------------------------");

    int compromisedAgentCount = 0;
    
    for (LSIAgent *agent in compromisedAgents) {
        if (agent.isCompromised.boolValue) {
            compromisedAgentCount ++;
        }
    }
    NSLog(@"There are %i compromised agents.", compromisedAgentCount);
    
}

- (void)highRiskAgents:(NSArray *)highRisk
{
    NSLog(@"-------------------High Risk Agents---------------------------");
    for (LSIAgent *agent in highRisk) {
        if(agent.accessLevel.intValue >= 8) {
            if(agent.isCompromised.boolValue){
                NSLog(@"%@, Level: %@ **WARNING** **COMPROMISED**", agent.realName, agent.accessLevel);
            } else {
                NSLog(@"%@, Level: %@", agent.realName, agent.accessLevel);
            }
        }
    }
}

-(void)agentLevels:(NSArray *)agentLevel
{
    NSLog(@"-------------------Agent Level--------------------------------");
    int lowLevelAgents = 0;
    int midLevelAgents = 0;
    int highLevelAgents = 0;
    for (LSIAgent *agent in agentLevel) {
        if (agent.accessLevel.intValue <= 4) {
            lowLevelAgents++;
        } else if (agent.accessLevel.intValue > 4 && agent.accessLevel.intValue <= 7) {
            midLevelAgents++;
        } else if (agent.accessLevel.intValue > 7 ) {
            highLevelAgents++;
        }
    }
    NSLog(@"%i low level agents, %i mid level agents and %i high level agents", lowLevelAgents, midLevelAgents, highLevelAgents);
}

@end
