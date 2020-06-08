//
//  main.m
//  NOCList-Objc
//
//  Created by Kenny on 6/8/20.
//  Copyright © 2020 Hazy Studios. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        LSIAgent *ethanHunt = [[LSIAgent alloc] initWithCoverName:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:8 copromised:NO];

        LSIAgent *jimPhelps = [[LSIAgent alloc] initWithCoverName:@"Jim Phelps" realName:@"Jon Voight" accessLevel:9 copromised:YES];

        LSIAgent *clairePhillips = [[LSIAgent alloc] initWithCoverName:@"Claire Phillips" realName:@"Emmanuelle Beart" accessLevel:5 copromised:NO];

        LSIAgent *eugeneKittridge = [[LSIAgent alloc] initWithCoverName:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel:10 copromised:YES];

        LSIAgent *franzKrieger = [[LSIAgent alloc] initWithCoverName:@"Franz Krieger" realName:@"Jean Reno" accessLevel:4 copromised:NO];

        LSIAgent *lutherStickell = [[LSIAgent alloc] initWithCoverName:@"Luther Stickell" realName:@"Ving Rhames" accessLevel:4 copromised:NO];

        LSIAgent *sarahDavies = [[LSIAgent alloc] initWithCoverName:@"Sarah Davies" realName:@"Kristin Scott Thomas" accessLevel:5 copromised:YES];

        LSIAgent *maxRotgrab = [[LSIAgent alloc] initWithCoverName:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel:4 copromised:NO];

        LSIAgent *hannahWilliams = [[LSIAgent alloc] initWithCoverName:@"Hanna Williams" realName:@"Ingeborga Dapkūnaitė" accessLevel:5 copromised:YES];

        LSIAgent *jackHarmon = [[LSIAgent alloc] initWithCoverName:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel:6 copromised:YES];

        LSIAgent *frankBarnes = [[LSIAgent alloc] initWithCoverName:@"Frank Barnes" realName:@"Dale Dye" accessLevel:9 copromised:NO];

        NSArray *agentsArray = @[
            ethanHunt,
            jimPhelps,
            clairePhillips,
            eugeneKittridge,
            franzKrieger,
            lutherStickell,
            sarahDavies,
            maxRotgrab,
            hannahWilliams,
            jackHarmon,
            frankBarnes
        ];

        //Determine compromised agents:
        int compromisedAgents = 0;
        for (int i=0; i < agentsArray.count; i++) {
            LSIAgent *agent = agentsArray[i];
            if (agent.compromised.boolValue) {
                compromisedAgents++;
            }
        }
        NSLog(@"There are %d compromised agents", compromisedAgents);

        //Determine clean agents:
        NSLog(@"----------Clean Agents----------");
        int cleanAgents = 0;
        for (int i=0; i < agentsArray.count; i++) {
            LSIAgent *agent = agentsArray[i];

            if (!agent.compromised.boolValue) {
                cleanAgents++;
                NSLog(@"%@ is clean", agent.coverName);
            }
        }
        NSLog(@"There are %d clean agents", cleanAgents);

        //Determine high risk agents (accessLevel 8+, and compromised)
        NSLog(@"----------High Risk Agents----------");
        int highRiskAgents = 0;
        for (int i=0; i < agentsArray.count; i++) {

            LSIAgent *agent = agentsArray[i];
            //NSLog(@"%@, level %@ is compromised: %@", agent.coverName, agent.accessLevel, agent.compromised);

            if (agent.compromised.boolValue && agent.accessLevel.intValue >= 8) {
                highRiskAgents++;
                NSLog(@"%@, level: %@ **WARNING** **COMPROMISED**", agent.coverName, agent.accessLevel);
            }
        }
        NSLog(@"There are %d high risk agents", highRiskAgents);

        //Low level/mid level/high level
        int lowLevelAgents = 0;
        int midLevelAgents = 0;
        int highLevelAgents = 0;

        for (LSIAgent *agent in agentsArray) {
            if (agent.accessLevel.intValue < 5) {
                lowLevelAgents++;
            } else if (agent.accessLevel.intValue < 7) {
                midLevelAgents++;
            } else {
                highLevelAgents++;
            }
        }
        NSLog(@"There are %d low level agents, %d mid level agents, and %d high level agents", lowLevelAgents, midLevelAgents, highLevelAgents);

        //sorted
        NSSortDescriptor *sortDescriptor;
        sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"accessLevel" ascending:YES];

        NSArray *sortedAgents = [agentsArray sortedArrayUsingDescriptors:@[sortDescriptor]];

        NSLog(@"----------Sorted Agents----------");
        for (LSIAgent *agent in sortedAgents) {
            NSLog(@"%@, level %@", agent.coverName, agent.accessLevel);
        }
    }
    return 0;
}
