//
//  main.m
//  NOCList-Objc
//
//  Created by Norlan Tibanear on 11/11/20.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Agents Init
        
        LSIAgent *agentOne = [[LSIAgent alloc]
                              initCoverName:@"Ethan Hunt"
                              realName:@"Tom Cruise"
                              accessLevel:8
                              compromised:NO];
        
        LSIAgent *agentTwo = [[LSIAgent alloc]
                              initCoverName:@"Jim Phelps"
                              realName:@"Jon Voight"
                              accessLevel:9
                              compromised:YES];
        
        LSIAgent *agentThree = [[LSIAgent alloc]
                              initCoverName:@"Claire Phelps"
                              realName:@"Emmanuelle Beart"
                              accessLevel:5
                              compromised:NO];
        
        LSIAgent *agentFour = [[LSIAgent alloc]
                              initCoverName:@"Eugene Kittridge"
                              realName:@"Henry Czerny"
                              accessLevel:10
                              compromised:YES];
        
        LSIAgent *agentFive = [[LSIAgent alloc]
                              initCoverName:@"Franz Krieger"
                              realName:@"Jean Reno"
                              accessLevel:4
                              compromised:NO];
        
        LSIAgent *agentSix = [[LSIAgent alloc]
                              initCoverName:@"Luther Stickell"
                              realName:@"Ving Rhames"
                              accessLevel:4
                              compromised:YES];
        
        LSIAgent *agentSeven = [[LSIAgent alloc]
                              initCoverName:@"Sarah Davies"
                              realName:@"Kristin Scott Thomas"
                              accessLevel:5
                              compromised:YES];
        
        LSIAgent *agentEight = [[LSIAgent alloc]
                              initCoverName:@"Max RotGab"
                              realName:@"Vanessa Redgrave"
                              accessLevel:4
                              compromised:NO];
        
        LSIAgent *agentNine = [[LSIAgent alloc]
                              initCoverName:@"Hannah Williams"
                              realName:@"Ingeborga Dapunaite"
                              accessLevel:5
                              compromised:YES];
        
        LSIAgent *agentTen = [[LSIAgent alloc]
                              initCoverName:@"Jack Harmon"
                              realName:@"Emilio Estevez"
                              accessLevel:6
                              compromised:YES];
        
        LSIAgent *agentEleven = [[LSIAgent alloc]
                              initCoverName:@"Frank Barnes"
                              realName:@"Dale Dye"
                              accessLevel:9
                                 compromised:NO];
        
        // Agents Array
        NSArray *agentArray;
        agentArray = @[agentOne, agentTwo, agentThree, agentFour, agentFive, agentSix, agentSeven, agentEight, agentNine, agentTen, agentEleven];
        
        
        // List of compromised agents
        int compromisedAgents = 0;
        
        for (LSIAgent *agent in agentArray) {
            if ([agent compromised] == [NSNumber numberWithBool:YES]) {
                compromisedAgents += 1;
            }
        }
        NSLog(@"Number of compromised agents: %d", compromisedAgents);
        
        
        // List of clean agents
        int cleanAgents = 0;
        
        for (LSIAgent *agent in agentArray) {
            if ([agent compromised] == [NSNumber numberWithBool:NO]) {
                cleanAgents += 1;
                NSLog(@"Agent is clean: %@", [agent coverName]);
            }
        }
        NSLog(@"Number of clean agents: %d", cleanAgents);
        
        
        // List of high risk agents
        for (LSIAgent *agent  in agentArray) {
            if ([[agent accessLevel] isGreaterThanOrEqualTo:[NSNumber numberWithInt:8]]) {
                if ([agent compromised] == [NSNumber numberWithBool:YES]) {
                    NSLog(@"%@, level %@ clearance. **WARNING**COMPROMISED**", agent.realName, agent.accessLevel);
                } else if ([agent compromised] == [NSNumber numberWithBool:NO]) {
                    NSLog(@"%@, level %@ clearance", agent.realName, agent.accessLevel);
                }
            }
        }
        
        
        // List of agents access level
        int lowLevelAgents = 0;
        int middleLevelAgents = 0;
        int highLevelAgents = 0;
        
        for (LSIAgent *agent in agentArray) {
            if ([[agent accessLevel] isLessThanOrEqualTo:[NSNumber numberWithInt:4]]) {
                lowLevelAgents += 1;
            } else if (([[agent accessLevel] isLessThanOrEqualTo:[NSNumber numberWithInt:7]]) && ([[agent accessLevel] isGreaterThan:[NSNumber numberWithInt:4]])) {
                middleLevelAgents += 1;
            } else {
                highLevelAgents += 1;
            }
        }
        NSLog(@"%d low level agents, %d mid level agents, and %d high level agents", lowLevelAgents, middleLevelAgents, highLevelAgents);
        
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
