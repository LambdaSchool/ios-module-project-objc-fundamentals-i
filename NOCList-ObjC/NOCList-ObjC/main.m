//
//  main.m
//  NOCList-ObjC
//
//  Created by Christopher Devito on 5/11/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        LSIAgent *ethanHunt = [[LSIAgent alloc]
                               initWithCoverName:@"Ethan Hunt"
                               realName:@"Tom Cruise"
                               accessLevel:8
                               isCompromised:NO];
        LSIAgent *jimPhelps = [[LSIAgent alloc]
                               initWithCoverName:@"Jim Phelps"
                               realName:@"Jon Voight"
                               accessLevel:9
                               isCompromised:YES];
        LSIAgent *clairePhelps = [[LSIAgent alloc]
                                  initWithCoverName:@"Claire Phelps"
                                  realName:@"Emmanuelle Beart"
                                  accessLevel:5
                                  isCompromised:NO];
        LSIAgent *eugeneKittridge = [[LSIAgent alloc]
                                     initWithCoverName:@"Eugene Kittridge"
                                     realName:@"Henry Czerny"
                                     accessLevel:10
                                     isCompromised:YES];
        LSIAgent *franzKrieger = [[LSIAgent alloc]
                                  initWithCoverName:@"Franz Krieger"
                                  realName:@"Jean Reno"
                                  accessLevel:4
                                  isCompromised:NO];
        LSIAgent *lutherStickell = [[LSIAgent alloc]
                                    initWithCoverName:@"Luther Stickell"
                                    realName:@"Ving Rhames"
                                    accessLevel:4
                                    isCompromised:NO];
        LSIAgent *sarahDavies = [[LSIAgent alloc]
                                 initWithCoverName:@"Sarah Davies"
                                 realName:@"Kristin Scott Thomas"
                                 accessLevel:5
                                 isCompromised:YES];
        LSIAgent *maxRotgrab = [[LSIAgent alloc]
                                initWithCoverName:@"Max RotGrab"
                                realName:@"Vanessa Redgrave"
                                accessLevel:4
                                isCompromised:NO];
        LSIAgent *hannahWilliams = [[LSIAgent alloc]
                                    initWithCoverName:@"Hannah Williams"
                                    realName:@"Ingeborga Dapkunaite"
                                    accessLevel:5
                                    isCompromised:YES];
        LSIAgent *jackHarmon = [[LSIAgent alloc]
                                initWithCoverName:@"Jack Harmon"
                                realName:@"Emilio Estevez"
                                accessLevel:6
                                isCompromised:YES];
        LSIAgent *frankBarnes = [[LSIAgent alloc]
                                 initWithCoverName:@"Frank Barnes"
                                 realName:@"Dale Dye"
                                 accessLevel:9
                                 isCompromised:NO];
        
        NSArray *agents = @[ethanHunt, jimPhelps, clairePhelps, eugeneKittridge, franzKrieger, lutherStickell, sarahDavies, maxRotgrab, hannahWilliams, jackHarmon, frankBarnes];
        
        int numberCompromised = 0;
        for (LSIAgent *agent in agents) {
            if ([agent.isCompromised isEqualToNumber:@1]) {
                numberCompromised++;
            }
        }
        NSLog(@"%i agents have been compromised.", numberCompromised);
        
        int numberClean = 0;
        for (LSIAgent *agent in agents) {
            if ([agent.isCompromised isEqualToNumber:@0]) {
                numberClean++;
                NSLog(@"Agent is clean: %@", agent.coverName);
            }
        }
        NSLog(@"%i agents are still uncompromised.", numberClean);
        
        NSNumber *highAccess = @8;
        NSString *warning = @"**WARNING** **COMPROMISED**";
        for (LSIAgent *agent in agents) {
            if ([agent.accessLevel isGreaterThanOrEqualTo:@8] && [agent.isCompromised isEqualToNumber:@1]) {
                NSLog(@"%@, level: %@ %@", agent.realName, agent.accessLevel, warning);
            } else if ([agent.accessLevel isGreaterThanOrEqualTo:@8]) {
                NSLog(@"%@, level: %@", agent.realName, agent.accessLevel);
            }
        }
        
        NSNumber *midAccess = @5;
        int numberLow = 0;
        int numberMid = 0;
        int numberHigh = 0;
        for (LSIAgent *agent in agents) {
            if (agent.accessLevel >= highAccess) {
                numberHigh++;
            } else if (agent.accessLevel >= midAccess) {
                numberMid++;
            } else {
                numberLow++;
            }
        }
        NSLog(@"%i low level agents, %i mid level agents, and %i high level agents", numberLow, numberMid, numberHigh);
        
        NSSortDescriptor *sortDescriptor;
        sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"accessLevel" ascending:YES];
        NSArray *sortedAgents = [agents sortedArrayUsingDescriptors:@[sortDescriptor]];
        for (LSIAgent *agent in sortedAgents) {
            NSLog(@"Cover Name: %@, Access Level: %@", agent.coverName, agent.accessLevel);
        }
    }
    return 0;
}
