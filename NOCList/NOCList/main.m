//
//  main.m
//  NOCList
//
//  Created by Shawn Gee on 5/11/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        // Initialize agents
        
        LSIAgent *agent1 = [[LSIAgent alloc] initAgentWithCoverName:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:8 isCompromised:false];
        LSIAgent *agent2 = [[LSIAgent alloc] initAgentWithCoverName:@"Jim Phelps" realName:@"Jon Voight" accessLevel:9 isCompromised:true];
        LSIAgent *agent3 = [[LSIAgent alloc] initAgentWithCoverName:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel:5 isCompromised:false];
        LSIAgent *agent4 = [[LSIAgent alloc] initAgentWithCoverName:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel: 0 isCompromised:true];
        LSIAgent *agent5 = [[LSIAgent alloc] initAgentWithCoverName:@"Franz Krieger" realName:@"Jean Reno" accessLevel:4 isCompromised:false];
        LSIAgent *agent6 = [[LSIAgent alloc] initAgentWithCoverName:@"Luther Stickell" realName:@"Ving Rhames" accessLevel:4 isCompromised:false];
        LSIAgent *agent7 = [[LSIAgent alloc] initAgentWithCoverName:@"Sarah Davies" realName:@"Kristin Scott Thomas" accessLevel:5 isCompromised:true];
        LSIAgent *agent8 = [[LSIAgent alloc] initAgentWithCoverName:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel:4 isCompromised:false];
        LSIAgent *agent9 = [[LSIAgent alloc] initAgentWithCoverName:@"Hannah Williams" realName:@"Ingeborga Dapkūnaitė" accessLevel:5 isCompromised:true];
        LSIAgent *agent10 = [[LSIAgent alloc] initAgentWithCoverName:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel:6 isCompromised:true];
        LSIAgent *agent11 = [[LSIAgent alloc] initAgentWithCoverName:@"Frank Barnes" realName:@"Dale Dye" accessLevel:9 isCompromised:false];
        
        NSArray *agents = @[agent1, agent2, agent3, agent4, agent5, agent6, agent7, agent8, agent9, agent10, agent11];
        
        
        // Determine compromised agent count
        int compromisedAgentCount = 0;
        
        for (LSIAgent *agent in agents) {
            if (agent.isCompromised.boolValue == YES) {
                compromisedAgentCount++;
            }
        }
        
        NSLog(@"There are a total of %d compromised agents", compromisedAgentCount);
        NSLog(@"");
        
        // Find, print, and count the number of clean agents
        int cleanAgentCount = 0;
        
        for (int i = 0; i<agents.count; i++) {
            LSIAgent *agent = agents[i];
            if (agent.isCompromised.boolValue == NO) {
                NSLog(@"Agent %@ is clean", agent.coverName);
                cleanAgentCount += 1;
            }
        }
        
        NSLog(@"There are a total of %d clean agents", cleanAgentCount);
        NSLog(@"");
        
        // Find and print high risk agents, appending *** WARNING COMPROMISED *** if they are compromised
        for (LSIAgent *agent in agents) {
            if (agent.accessLevel.intValue >= 8) {
                NSMutableString *agentString = [[NSMutableString alloc] init];
                [agentString appendFormat:@"%@, level:%@", agent.realName, agent.accessLevel];
                
                if (agent.isCompromised.boolValue == true) {
                    [agentString appendString:@" *** WARNING COMPROMISED ***"];
                }
                NSLog(@"%@", agentString);
            }
        }
        
        NSLog(@"");
        
        // Create a loop that finds totals for low, mid, and high level agents
        int lowLevelAgentCount = 0; // level <= 4
        int midLevelAgentCount = 0; // level 5...7
        int highLevelAgentCount = 0; // level 8...
        
        for (LSIAgent *agent in agents) {
            if (agent.accessLevel.intValue <= 4) {
                lowLevelAgentCount++;
            } else if (5 <= agent.accessLevel.intValue && agent.accessLevel.intValue <= 7) {
                midLevelAgentCount++;
            } else if (8 <= agent.accessLevel.intValue) {
                highLevelAgentCount++;
            }
        }
        
        NSLog(@"There are %d low level, %d mid level, and %d high level agentsn", lowLevelAgentCount, midLevelAgentCount, highLevelAgentCount);
        NSLog(@"");
        
        // Create a loop that prints the cover names and access levels of all agents,
        // but the list should be sorted by access level, in ascending order.
    
        NSSortDescriptor *levelSort = [NSSortDescriptor sortDescriptorWithKey:@"accessLevel" ascending:YES];
        NSSortDescriptor *coverNameSort = [NSSortDescriptor sortDescriptorWithKey:@"coverName" ascending:YES];
        NSArray *sortedAgents = [agents sortedArrayUsingDescriptors:@[levelSort, coverNameSort]];
        
        for (LSIAgent* agent in sortedAgents) {
            NSLog(@"%@, level: %@", agent.coverName, agent.accessLevel);
        }
        
    }
    return 0;
}
