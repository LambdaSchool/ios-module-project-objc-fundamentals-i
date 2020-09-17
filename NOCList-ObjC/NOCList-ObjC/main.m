//
//  main.m
//  NOCList-ObjC
//
//  Created by Ian French on 9/16/20.
//  Copyright © 2020 Ian French. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
                // insert code here
                LSIAgent *agent1 = [[LSIAgent alloc] initWithCoverName:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:8 compromised:NO];

                LSIAgent *agent2 = [[LSIAgent alloc] initWithCoverName:@"Jim Phelps" realName:@"Jon Voight" accessLevel:9 compromised:YES];

                LSIAgent *agent3 = [[LSIAgent alloc] initWithCoverName:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel:5 compromised:NO];

                LSIAgent *agent4 = [[LSIAgent alloc] initWithCoverName:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel:10 compromised:YES];

                LSIAgent *agent5 = [[LSIAgent alloc] initWithCoverName:@"Franz Krieger" realName:@"Jean Reno" accessLevel:4 compromised:NO];

                LSIAgent *agent6 = [[LSIAgent alloc] initWithCoverName:@"Luther Stickell" realName:@"Ving Rhames" accessLevel:4 compromised:NO];

                LSIAgent *agent7 = [[LSIAgent alloc] initWithCoverName:@"Sarah Davies" realName:@"Kristin Scott Thomas" accessLevel:5 compromised:YES];

                LSIAgent *agent8 = [[LSIAgent alloc] initWithCoverName:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel:4 compromised:NO];

                LSIAgent *agent9 = [[LSIAgent alloc] initWithCoverName:@"Hannah Williams" realName:@"Ingeborga Dapkunaite" accessLevel:5 compromised:YES];

                LSIAgent *agent10 = [[LSIAgent alloc] initWithCoverName:@"Jack Hermon" realName:@"Emilio Estevez" accessLevel:6 compromised:YES];
        
                LSIAgent *agent11 = [[LSIAgent alloc] initWithCoverName:@"Frank Barnes" realName:@"Dale Dye" accessLevel:9 compromised:NO];

                //Create initial array

                NSArray *agents = @[agent1, agent2, agent3, agent4, agent5, agent6, agent7, agent8, agent9, agent10, agent11];

                //Locate compromised agents

                int compromisedAgents = 0;
                for (LSIAgent *agent in agents) {
                    if(agent.compromised.boolValue) {
                        compromisedAgents += 1;
                    }
                }

                NSLog(@"There are %d compromised agents", compromisedAgents);

                //Identify clean agents
                int cleanAgents = 0;
                for (LSIAgent *agent in agents) {
                    if(!agent.compromised.boolValue) {
                        cleanAgents += 1;
                        NSLog(@"Agent %@ is clean.", agent.coverName);
                    }
                }

                NSLog(@"There are %i clean agents", cleanAgents);

                //Identify high risk agents
                for (LSIAgent *agent in agents) {
                    if(agent.accessLevel.intValue >= 8 && agent.compromised.boolValue) {
                        NSLog(@"**WARNING**  Agent %@, level: %d  **COMPROMISED**", agent.realName, agent.accessLevel.intValue);
                    } else if(agent.accessLevel.intValue >= 8) {
                        NSLog(@"%@, level: %d", agent.realName, agent.accessLevel.intValue);
                    }
                }

                // Classify rank of agents
                int lowLevelAgents = 0;
                int midLevelAgents = 0;
                int highLevelAgents = 0;

                for (LSIAgent *agent in agents) {
                    if(agent.accessLevel.intValue >= 8) {
                        highLevelAgents += 1;
                    } else if (agent.accessLevel.intValue >= 5) {
                        midLevelAgents += 1;
                    } else {
                        lowLevelAgents += 1;
                    }
                }

                NSLog(@"There are currently %d low level agents, %d mid level agents and %d high level agents", lowLevelAgents, midLevelAgents, highLevelAgents);

                // Print out the sorted array
                NSSortDescriptor *sortedArray = [[NSSortDescriptor alloc] initWithKey:@"accessLevel" ascending:YES];
                agents = [agents sortedArrayUsingDescriptors:@[sortedArray]];

                for (LSIAgent *agent in agents) {
                    if(agent.accessLevel.intValue <= 6) {
                    NSLog(@"Agent %@ >>> Real Name: %@, level: %d", agent.coverName, agent.realName, agent.accessLevel.intValue);
                    } else {
                        NSLog(@"Agent %@ >>>  Real Name: CLASSIFIED, level: %d", agent.coverName, agent.accessLevel.intValue);
                    }
            }
            return 0;
        }
}
