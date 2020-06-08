//
//  main.m
//  NOCList
//
//  Created by Hunter Oppel on 6/8/20.
//  Copyright © 2020 LambdaSchool. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        LSIAgent *ethan = [[LSIAgent alloc]initWithCoverName:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:8 compromised:NO];
        LSIAgent *jim = [[LSIAgent alloc]initWithCoverName:@"Jim Phelps" realName:@"Jon Voight" accessLevel:9 compromised:YES];
        LSIAgent *claire = [[LSIAgent alloc]initWithCoverName:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel:5 compromised:NO];
        LSIAgent *eugene = [[LSIAgent alloc]initWithCoverName:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel:10 compromised:YES];
        LSIAgent *franz = [[LSIAgent alloc]initWithCoverName:@"Franz Krieger" realName:@"Jean Reno" accessLevel:4 compromised:NO];
        LSIAgent *luther = [[LSIAgent alloc]initWithCoverName:@"Luther Stickell" realName:@"Ving Rhames" accessLevel:4 compromised:NO];
        LSIAgent *sarah = [[LSIAgent alloc]initWithCoverName:@"Sarah Davies" realName:@"Kristin Scott Thomas" accessLevel:5 compromised:YES];
        LSIAgent *max = [[LSIAgent alloc]initWithCoverName:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel:4 compromised:NO];
        LSIAgent *hannah = [[LSIAgent alloc]initWithCoverName:@"Hannah Williams" realName:@"Ingeborga Dapkūnaitė" accessLevel:5 compromised:YES];
        LSIAgent *jack = [[LSIAgent alloc]initWithCoverName:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel:6 compromised:YES];
        LSIAgent *frank = [[LSIAgent alloc]initWithCoverName:@"Frank Barnes" realName:@"Dale Dye" accessLevel:9 compromised:NO];
        
        NSArray *agents = @[ethan, jim, claire, eugene, franz, luther, sarah, max, hannah, jack, frank];
        
        // Compromised agents
        int compromisedAgents = 0;
        for (int i=0; i<agents.count; i++) {
            if ([agents[i] compromised]) {
                compromisedAgents++;
            }
        }
        NSLog(@"%d agents are compromised!", compromisedAgents);
        
        // Clean agents
        int cleanAgents = 0;
        for (int i=0; i<agents.count; i++) {
            if (![agents[i] compromised]) {
                cleanAgents++;
                NSLog(@"Agent is clean: %@", [agents[i] coverName]);
            }
        }
        NSLog(@"%d agents are clean.", cleanAgents);
        
        // High risk agents
        for (int i=0; i<agents.count; i++) {
            if ([agents[i] accessLevel] >= 8) {
                if ([agents[i] compromised]) {
                    NSLog(@"%@, level: %d **WARNING** **COMPROMISED**", [agents[i] realName], [agents[i] accessLevel]);
                } else {
                    NSLog(@"%@, level: %d", [agents[i] realName], [agents[i] accessLevel]);
                }
            }
        }
        
        // Total agent levels
        int lowAgents = 0;
        int midAgents = 0;
        int highAgents = 0;
        for (int i=0; i<agents.count; i++) {
            if ([agents[i] accessLevel] >= 8) {
                highAgents++;
            } else if ([agents[i] accessLevel] <= 4) {
                lowAgents++;
            } else {
                midAgents++;
            }
        }
        NSLog(@"%d low level agents, %d mid level agents, and %d high level agents.", lowAgents, midAgents, highAgents);
    }
    return 0;
}
