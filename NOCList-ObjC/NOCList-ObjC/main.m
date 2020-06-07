//
//  main.m
//  NOCList-ObjC
//
//  Created by Shawn James on 6/7/20.
//  Copyright © 2020 Shawn James. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        LSIAgent *agent0 = [[LSIAgent alloc] initWithCoverName:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:8 isCompromised:false];
        LSIAgent *agent1 = [[LSIAgent alloc] initWithCoverName:@"Jim Phelps" realName:@"Jon Voight" accessLevel: 9 isCompromised: true];
        LSIAgent *agent2 = [[LSIAgent alloc] initWithCoverName:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel: 5 isCompromised: false];
        LSIAgent *agent3 = [[LSIAgent alloc] initWithCoverName:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel: 10 isCompromised: true];
        LSIAgent *agent4 = [[LSIAgent alloc] initWithCoverName:@"Franz Krieger" realName:@"Jean Reno" accessLevel: 4 isCompromised: false];
        LSIAgent *agent5 = [[LSIAgent alloc] initWithCoverName:@"Luther Stickell" realName:@"Ving Rhames" accessLevel: 4 isCompromised: false];
        LSIAgent *agent6 = [[LSIAgent alloc] initWithCoverName:@"Sarah Davies" realName:@"Kristin Scott Thomas" accessLevel: 5 isCompromised: true];
        LSIAgent *agent7 = [[LSIAgent alloc] initWithCoverName:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel: 4 isCompromised: false];
        LSIAgent *agent8 = [[LSIAgent alloc] initWithCoverName:@"Hannah Williams" realName:@"Ingeborga Dapkūnaitė" accessLevel: 5 isCompromised: true];
        LSIAgent *agent9 = [[LSIAgent alloc] initWithCoverName:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel: 6 isCompromised: true];
        LSIAgent *agent10 = [[LSIAgent alloc] initWithCoverName:@"Frank Barnes" realName:@"Dale Dye" accessLevel: 9 isCompromised: false];
        
        NSMutableArray *arrayOfAgents = [@[agent0,agent1,agent2,agent3,agent4,agent5,agent6,agent7,agent8,agent9,agent10] mutableCopy];
        
        // compromised agents
        int numberOfCompromisedAgents = 0;
        for (LSIAgent *agent in arrayOfAgents) {
            if (agent.isCompromised.boolValue) {
                numberOfCompromisedAgents ++;
            }
        }
        NSLog(@"Number of compromised agents: %i", numberOfCompromisedAgents);
        
        // clean agents
        int numberOfCleanAgents = 0;
        for (LSIAgent *agent in arrayOfAgents) {
            if (agent.isCompromised.boolValue == false) {
                numberOfCleanAgents ++;
                NSLog(@"%@ is clean", agent.coverName);
            }
        }
        NSLog(@"Number of clean agents: %i", numberOfCleanAgents);
        
        // high risk agents
        for (LSIAgent *agent in arrayOfAgents) {
            if (agent.accessLevel.intValue >= 8) {
                NSLog(@"%@, level: %i, **WARNING** **COMPROMISED**", agent.realName, agent.accessLevel.intValue);
            }
        }
        
        // low / mid / high level agents
        int numberOfLowLevelAgents = 0;
        int numberOfMidLevelAgents = 0;
        int numberOfHighLevelAgents = 0;
        for (LSIAgent *agent in arrayOfAgents) {
            int level = agent.accessLevel.intValue;
            if (level >= 8) {
                numberOfHighLevelAgents++;
            } else if (level >= 5) {
                numberOfMidLevelAgents++;
            } else {
                numberOfLowLevelAgents++;
            }
        }
        NSLog(@"%i low level agents, %i mid level agents, and %i high level agents", numberOfLowLevelAgents, numberOfMidLevelAgents, numberOfHighLevelAgents);
        
    }
    return 0;
}
