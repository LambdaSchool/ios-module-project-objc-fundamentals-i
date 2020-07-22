//
//  main.m
//  NOCList-ObjC
//
//  Created by Sean Acres on 7/22/20.
//  Copyright © 2020 Sean Acres. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        LSIAgent *agentOne = [[LSIAgent alloc] initWithCoverName:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:8 compromised:NO];
        LSIAgent *agentTwo = [[LSIAgent alloc] initWithCoverName:@"Jim Phelps" realName:@"Jon Voight" accessLevel:9 compromised:YES];
        LSIAgent *agentThree = [[LSIAgent alloc] initWithCoverName:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel:5 compromised:NO];
        LSIAgent *agentFour = [[LSIAgent alloc] initWithCoverName:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel:10 compromised:YES];
        LSIAgent *agentFive = [[LSIAgent alloc] initWithCoverName:@"Franz Krieger" realName:@"Jean Reno" accessLevel:4 compromised:NO];
        LSIAgent *agentSix = [[LSIAgent alloc] initWithCoverName:@"Luther Stickell" realName:@"Ving Rhames" accessLevel:4 compromised:NO];
        LSIAgent *agentSeven = [[LSIAgent alloc] initWithCoverName:@"Sarah Davies" realName:@"Kristin Scott Thomas" accessLevel:5 compromised:YES];
        LSIAgent *agentEight = [[LSIAgent alloc] initWithCoverName:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel:4 compromised:NO];
        LSIAgent *agentNine = [[LSIAgent alloc] initWithCoverName:@"Hannah Williams" realName:@"Ingeborga Dapkūnaitė" accessLevel:5 compromised:YES];
        LSIAgent *agentTen = [[LSIAgent alloc] initWithCoverName:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel:6 compromised:YES];
        LSIAgent *agentEleven = [[LSIAgent alloc] initWithCoverName:@"Frank Barnes" realName:@"Dale Dye" accessLevel:9 compromised:NO];
        
        NSArray *agentList = @[agentOne, agentTwo, agentThree, agentFour, agentFive, agentSix, agentSeven, agentEight, agentNine, agentTen, agentEleven];
        
        
        // Print total number of compromised agents
        int totalCompromised = 0;
        
        for (LSIAgent *agent in agentList) {
            if (agent.compromised.boolValue) {
                totalCompromised += 1;
            }
        }
        
        NSLog(@"The total number of compromised agents is %d",totalCompromised);
        
        // Print which agents are clean and total number
        int totalClean = 0;
        
        for (LSIAgent *agent in agentList) {
            if (agent.compromised.boolValue == NO) {
                totalClean += 1;
                NSLog(@"Agent is clean: %@", agent.coverName);
            }
        }
        
        NSLog(@"The total number of clean agents is %d",totalClean);
        
        // Find high risk agents with level 8 or higher and compromised status
        
        for (LSIAgent *agent in agentList) {
            if (agent.accessLevel.intValue > 7) {
                if (agent.compromised.boolValue) {
                    NSLog(@"%@, level %d **WARNING** **COMPROMISED**", agent.realName, agent.accessLevel.intValue);
                } else {
                    NSLog(@"%@, level %d", agent.realName, agent.accessLevel.intValue);
                }
            }
        }
        
        // Find totals for low (<5), mid (5-7) and high level (>7) agents
        int totalLow = 0;
        int totalMid = 0;
        int totalHigh = 0;
        
        for (LSIAgent *agent in agentList) {
            if (agent.accessLevel.intValue > 7) {
                totalHigh += 1;
            } else if (agent.accessLevel.intValue < 5) {
                totalLow += 1;
            } else {
                totalMid += 1;
            }
        }
        
        NSLog(@"%d low level agents, %d mid level agents, and %d high level agents", totalLow, totalMid, totalHigh);
        
    }
    return 0;
}
