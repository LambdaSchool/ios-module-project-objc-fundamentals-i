//
//  main.m
//  NOCList-ObjC
//
//  Created by Mark Poggi on 6/8/20.
//  Copyright © 2020 Mark Poggi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // MARK: - Created Agent Objects

        LSIAgent *ethanHunt = [[LSIAgent alloc] initWithCoverName:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:8 compromised:false];
        LSIAgent *jimPhelps = [[LSIAgent alloc]initWithCoverName:@"Jim Phelps" realName:@"Jon Voight" accessLevel:9 compromised:true];
        LSIAgent *clairePhelps = [[LSIAgent alloc]initWithCoverName:@"Claire Phelps" realName:@"Emanuelle Beart" accessLevel:5 compromised:false];
        LSIAgent *eugeneKittridge = [[LSIAgent alloc]initWithCoverName:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel:10 compromised:true];
        LSIAgent *franzKrieger = [[LSIAgent alloc]initWithCoverName:@"Franz Krieger" realName:@"Jean Reno" accessLevel:4 compromised:false];
        LSIAgent *lutherStickell = [[LSIAgent alloc]initWithCoverName:@"Luther Stickell" realName:@"Ving Rhames" accessLevel:4 compromised:false];
        LSIAgent *sarahDavies = [[LSIAgent alloc]initWithCoverName:@"Sarah Davies" realName:@"Kristin Scott Thomas" accessLevel:5 compromised:true];
        LSIAgent *maxRotGrab = [[LSIAgent alloc]initWithCoverName:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel:4 compromised:false];
        LSIAgent *hannahWilliams = [[LSIAgent alloc]initWithCoverName:@"Hannah Williams" realName:@"Ingeborga Dapkūnaitė" accessLevel:5 compromised:true];
        LSIAgent *jackHarmon = [[LSIAgent alloc]initWithCoverName:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel:6 compromised:true];
        LSIAgent *frankBarnes = [[LSIAgent alloc]initWithCoverName:@"Frank Barnes" realName:@"Dale Dye" accessLevel:9 compromised:true];

        // MARK: - Created Array

        NSArray *agents = @[ethanHunt, jimPhelps, clairePhelps, eugeneKittridge, franzKrieger, lutherStickell, sarahDavies, maxRotGrab, hannahWilliams, jackHarmon, frankBarnes];

        // MARK: - For in loops

        int numberCompromised = 0;
        for (LSIAgent *agent in agents){
            if ([agent.isCompromised isEqualToNumber:@1]) {
                numberCompromised++;
            }
        }
        NSLog(@"%i compromised agents.", numberCompromised);

        int numberClean = 0;
        for (LSIAgent *agent in agents){
            if ([agent.isCompromised isEqualToNumber:@0]) {
                numberClean++;
            }
            NSLog(@"Agent is clean: %@", agent.coverName);
        }
        NSLog(@"%i clean agents.", numberClean);

        for (LSIAgent *agent in agents){
            if ([agent.accessLevel isGreaterThanOrEqualTo:@8] && [agent.isCompromised isEqualToNumber:@1]) {
                NSLog(@"%@, level: %@ %@", agent.realName, agent.accessLevel, @"**WARNING** **COMPROMISED**");
            } else if ([agent.accessLevel isGreaterThanOrEqualTo:@8]) {
                NSLog(@"%@, level: %@", agent.realName, agent.accessLevel);
            }
        }

        int numberLowLevel = 0;
        int numberMidLevel = 0;
        int numberHighLevel = 0;

        for (LSIAgent *agent in agents){
            if ([agent.accessLevel isGreaterThanOrEqualTo:@8]) {
                numberHighLevel++;
            } else if ([agent.accessLevel isGreaterThanOrEqualTo:@5] && [agent.accessLevel isLessThan:@8]) {
                numberMidLevel++;
            } else {
                numberLowLevel++;
            }
        }
        //2 low level agents, 3 mid level agents, and 4 high level agents

        NSLog(@"%i low level agents, %i mid level agents, and %i high level agents", numberLowLevel, numberMidLevel, numberHighLevel);

        //Create a loop that prints the cover names and access levels of all agents, but the list should be sorted by access level, in ascending order.

        // MARK: - Sorted Array using NSSortDescriptor

        NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"accessLevel" ascending:YES];
        NSArray *sortedAgents = [agents sortedArrayUsingDescriptors:@[sortDescriptor]];

        for (LSIAgent *agent in sortedAgents){
            NSLog(@"Cover name: %@, Access level: %@", agent.coverName, agent.accessLevel);
        }
    }

    return 0;
}
