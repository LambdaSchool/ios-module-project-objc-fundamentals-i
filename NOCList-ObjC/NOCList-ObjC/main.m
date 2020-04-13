//
//  main.m
//  NOCList-ObjC
//
//  Created by Ufuk Türközü on 13.04.20.
//  Copyright © 2020 Ufuk Türközü. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        LSIAgent *ethanHunt = [[LSIAgent alloc] initWith:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel: 8 compromised: NO];
        LSIAgent *jimPhelps = [[LSIAgent alloc] initWith:@"Jim Phelps" realName:@"Jon Voight" accessLevel: 9 compromised: YES];
        LSIAgent *clairePhelps = [[LSIAgent alloc] initWith:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel: 5 compromised: NO];
        LSIAgent *eugeneKittridge = [[LSIAgent alloc] initWith:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel: 10 compromised: YES];
        LSIAgent *franzKrieger = [[LSIAgent alloc] initWith:@"Franz Krieger" realName:@"Jean Reno" accessLevel: 4 compromised: NO];
        LSIAgent *lutherStickell = [[LSIAgent alloc] initWith:@"Luther Stickell" realName:@"Ving Rhames" accessLevel: 4 compromised: NO];
        LSIAgent *sarahDavies = [[LSIAgent alloc] initWith:@"Sarah Davies" realName:@"Kristin Scott Thomas" accessLevel: 5 compromised: YES];
        LSIAgent *maxRotGrab = [[LSIAgent alloc] initWith:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel: 4 compromised: YES];
        LSIAgent *hannahWilliams = [[LSIAgent alloc] initWith:@"Hannah Williams" realName:@"Ingeborga Dapkūnaitė" accessLevel: 5 compromised: NO];
        LSIAgent *jackHarmon = [[LSIAgent alloc] initWith:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel: 6 compromised: YES];
        LSIAgent *frankBarnes = [[LSIAgent alloc] initWith:@"Frank Barnes" realName:@"Dale Dye" accessLevel: 9 compromised: NO];
        
        NSArray *agents = [[NSArray alloc] initWithObjects: ethanHunt, jimPhelps, clairePhelps, eugeneKittridge, franzKrieger, lutherStickell, sarahDavies, maxRotGrab, hannahWilliams, jackHarmon, frankBarnes, nil];
        
        int compromisedAgentsCount = 0;
        NSMutableArray *compromisedAgents = [[NSMutableArray alloc] init];
        
        int cleanAgentsCount = 0;
        NSMutableArray *cleanAgents = [[NSMutableArray alloc] init];
        
        for (LSIAgent *agent in agents) {
            if (agent.compromised.boolValue == YES) {
                compromisedAgentsCount ++;
                [compromisedAgents addObject: agent.coverName];
            } else {
                cleanAgentsCount ++;
                [cleanAgents addObject: agent];
                NSLog(@"Agent is clean: %@", agent.coverName);
            }
        }
        NSLog(@"Number of uncomromised agents: %d", cleanAgentsCount);
        NSLog(@"Number of comromised agents: %d", compromisedAgentsCount);
        NSLog(@"Comromised agents: %@", compromisedAgents);
        
        int low = 0;
        int mid= 0;
        int high = 0;
        
        for (LSIAgent *agent in agents) {
            if (agent.accessLevel.intValue < 5) {
                low ++;
            } else if (agent.accessLevel.intValue > 7 + agent.compromised.boolValue == NO) {
                high ++;
                NSLog(@"%@, level: %@", agent.coverName, agent.accessLevel);
            } else if (agent.accessLevel.intValue > 7 + agent.compromised.boolValue == YES) {
                high ++;
                NSLog(@"%@, level: %@ **WARNING** **COMPROMISED**", agent.coverName, agent.accessLevel);
            } else {
                mid ++;
            }
        }
        
        NSLog(@"There are %i low level agents, %i mid level agents, and %i high level agents.", low, mid, high);
        
    }
    return 0;
}
