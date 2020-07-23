//
//  main.m
//  NOCList-ObjC
//
//  Created by Matthew Martindale on 7/22/20.
//  Copyright © 2020 Matthew Martindale. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        LSIAgent *agentHunt = [[LSIAgent alloc] initCoverName:@"Ethan Hunt" andRealName:@"Tom Cruise" andAccessLevel:8 andCompromised:NO];
        LSIAgent *agentPhelps = [[LSIAgent alloc] initCoverName:@"Jim Phelps" andRealName:@"Jon Voight" andAccessLevel:9 andCompromised:YES];
        LSIAgent *agentMrsPhelps = [[LSIAgent alloc] initCoverName:@"Claire Phelps" andRealName:@"Emmanuelle Beart" andAccessLevel:5 andCompromised:NO];
        LSIAgent *agentKittridge = [[LSIAgent alloc] initCoverName:@"Eugene Kittridge" andRealName:@"Henry Czerny" andAccessLevel:10 andCompromised:YES];
        LSIAgent *agentKrieger = [[LSIAgent alloc] initCoverName:@"Franz Krieger" andRealName:@"Jean Reno" andAccessLevel:4 andCompromised:NO];
        LSIAgent *agentStickell = [[LSIAgent alloc] initCoverName:@"Luther Stickell" andRealName:@"Ving Rhames" andAccessLevel:4 andCompromised:NO];
        LSIAgent *agentDavies = [[LSIAgent alloc] initCoverName:@"Sarah Davies" andRealName:@"Kristin Scott Thomas" andAccessLevel:5 andCompromised:YES];
        LSIAgent *agentRotGrab = [[LSIAgent alloc] initCoverName:@"Max RotGrab" andRealName:@"Vanessa Redgrave" andAccessLevel:4 andCompromised:NO];
        LSIAgent *agentWilliams = [[LSIAgent alloc] initCoverName:@"Hannah Williams" andRealName:@"Ingeborga Dapkunaite" andAccessLevel:5 andCompromised:YES];
        LSIAgent *agentHarmon = [[LSIAgent alloc] initCoverName:@"Jack Harmon" andRealName:@"Emilio Estevez" andAccessLevel:6 andCompromised:YES];
        LSIAgent *agentBarnes = [[LSIAgent alloc] initCoverName:@"Frank Barnes" andRealName:@"Dale Dye" andAccessLevel:9 andCompromised:NO];
        
        NSMutableArray *allAgents = [NSMutableArray new];
        [allAgents addObject:agentHunt];
        [allAgents addObject:agentPhelps];
        [allAgents addObject:agentMrsPhelps];
        [allAgents addObject:agentKittridge];
        [allAgents addObject:agentKrieger];
        [allAgents addObject:agentStickell];
        [allAgents addObject:agentDavies];
        [allAgents addObject:agentRotGrab];
        [allAgents addObject:agentWilliams];
        [allAgents addObject:agentHarmon];
        [allAgents addObject:agentBarnes];
        
        // Find compromised agents
        int totalCompromised = 0;
        
        for (LSIAgent *agent in allAgents)
        {
            if (agent.compromised.boolValue == YES)
            {
                totalCompromised++;
            }
        }
        NSLog(@"number of compromised agents: %d", totalCompromised);
        
        // Clean agents
        int totalCleanAgents = 0;
        
        for (LSIAgent *agent in allAgents)
        {
            if (agent.compromised.boolValue == NO)
            {
                totalCleanAgents++;
                NSLog(@"Agent is clean: %@", agent.coverName);
            }
        }
        NSLog(@"number of clean agents: %d", totalCleanAgents);
        
        // High risk agents
        for (LSIAgent *agent in allAgents)
        {
            if (agent.accessLevel.intValue >= 8)
            {
                NSLog(@"%@, level: %@", agent.realName, agent.accessLevel);
            }
        }
        
        int lowLevelAgents = 0;
        int midLevelAgents = 0;
        int highLevelAgents = 0;
        
        for (LSIAgent *agent in allAgents)
        {
            if (agent.accessLevel.intValue <= 4)
            {
                lowLevelAgents++;
            } else if (agent.accessLevel.intValue > 4 && agent.accessLevel.intValue <= 7)
            {
                midLevelAgents++;
            } else if (agent.accessLevel.intValue > 7)
            {
                highLevelAgents++;
            }
        }
        NSLog(@"%d low level agents, %d mid level agents, %d high level agents", lowLevelAgents, midLevelAgents, highLevelAgents);
        
    }
    return 0;
}
