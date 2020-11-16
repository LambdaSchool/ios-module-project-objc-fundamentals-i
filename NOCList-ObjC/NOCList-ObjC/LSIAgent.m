//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by John McCants on 11/15/20.
//

#import "LSIAgent.h"

@implementation LSIAgent

-(instancetype)initWithName:(NSString *)realName compromised:(BOOL *)compromised coverName:(NSString *)coverName accessLevel:(int *)accessLevel {
    if (self = [super init]) {
        self.realName = realName;
        self.compromised = [NSNumber numberWithBool: compromised];
        self.coverName = coverName;
        self.accessLevel = [NSNumber numberWithInt: accessLevel];
    }
    return self;
}

-(void)sortCompromisedAgents:(NSArray *)agents
{
    int compromisedAgents = 0;
    
    for (LSIAgent *agent in agents) {
        if (agent.compromised.boolValue) {
            compromisedAgents++;
        }
    }
    NSLog(@"Compromised Agents: %d", compromisedAgents);
}

- (void)sortCleanAgents:(NSArray *)agents
{
    int cleanAgents = 0;
    
    for (LSIAgent *agent in agents) {
        if (!agent.compromised.boolValue) {
            cleanAgents++;
            NSLog(@"Agent is clean: %@", agent.coverName);
        }
    }
    
    NSLog(@"Number of Clean Agents %d", cleanAgents);
}

- (void)sortHighRiskAgents:(NSArray *)agents
{
    for (LSIAgent *agent in agents) {

        if (agent.accessLevel.intValue >= 8 && agent.compromised.boolValue) {
            NSLog(@"%@, level %@ **WARNING** **COMPROMISED**",
                  agent.realName,
                  agent.accessLevel);
        } else if (agent.accessLevel.intValue >= 8) {
            NSLog(@"%@, level %@ clearance",
                  agent.realName,
                  agent.accessLevel);
        }
    }
}

- (void)sortLevels:(NSArray *)agents
{
    
    int lowLevelAgents = 0;
    int midLevelAgents = 0;
    int highLevelAgents = 0;
    
    for (LSIAgent *agent in agents) {
        NSLog(@"%@", agent.accessLevel);
        switch (agent.accessLevel.intValue) {
            case 1 :
                lowLevelAgents++;
                break;
            case 2 :
                lowLevelAgents++;
                break;
            case 3 :
                lowLevelAgents++;
                break;
            case 4:
                lowLevelAgents++;
                break;
            case 5:
                midLevelAgents++;
                break;
            case 6:
                midLevelAgents++;
                break;
            case 7:
                midLevelAgents++;
                break;
            case 8:
                highLevelAgents++;
                break;
            case 9:
                highLevelAgents++;
                break;
            case 10:
                highLevelAgents++;
                break;
                
        }
    }
    NSLog(@" %d low level agents, %d mid level agents, and %d high level agents", lowLevelAgents, midLevelAgents, highLevelAgents);
    
}



@end
