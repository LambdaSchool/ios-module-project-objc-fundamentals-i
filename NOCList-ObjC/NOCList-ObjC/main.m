//
//  main.m
//  NOCList-ObjC
//
//  Created by Joe Veverka on 7/13/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

#import "LSIAgent.h"
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Initialize each agent
        
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
        
        // Create an array with all agents
        NSMutableArray *arrayOfAgents =
        [@
         [agent0,agent1,agent2, agent3, agent4, agent5, agent6, agent7, agent8, agent9, agent10] mutableCopy];
        
        // Find Compromisd Agents
        
        int numberOfCompromisedAgents = 0;
        for (LSIAgent *agent in arrayOfAgents) {
            
            if (agent.isCompromised.boolValue) {
                numberOfCompromisedAgents ++;
            }
        }
        NSLog(@"CURRENTLY %i COMPROMISED AGENTS)",
              numberOfCompromisedAgents);
        
        // Find Clean Agents
        
        int numberOfCleanAgents = 0;
        for(LSIAgent *agent in arrayOfAgents) {
            if (agent.accessLevel.intValue >= 8) {
                NSLog(@"%@, LEVEL: %i, **WARNING** **COMPROMISED**", agent.realName, agent.accessLevel.intValue);
            }
        }
              
        int lowLevelAgents = 0;
        int midLevelAgents = 0;
        int highLevelAgents = 0;
        
        for (LSIAgent *agent in arrayOfAgents) {
            int level = agent.accessLevel.intValue;
            if (level >= 8) {
                highLevelAgents++;
            } else if (level >= 5) {
                midLevelAgents++;
            } else {
                lowLevelAgents++;
            }
        }
        NSLog(@"%i LOW LEVEL AGENTS, %i MID LEVEL AGENTS, %i HIGH LEVEL AGENTS", lowLevelAgents, midLevelAgents, highLevelAgents);
        
        // MARK: - Stretch
        
        NSSortDescriptor *sortDescriptor;
        sortDescriptor = [[NSSortDescriptor alloc]
                          initWithKey:@"accessLevel" ascending:YES];
        NSArray *sortedArrayOfAgents = [arrayOfAgents sortedArrayUsingDescriptors:@[sortDescriptor]];
        
        for(LSIAgent *agent in sortedArrayOfAgents) {
            NSLog(@"COVERNAME: %@, ACCESSLEVEL: %@",
                  agent.coverName, agent.accessLevel);
        }
        
    }
    return 0;
}
