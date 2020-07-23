//
//  main.m
//  NOCList-ObjC
//
//  Created by Chad Parker on 7/22/20.
//  Copyright © 2020 Chad Parker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

/*
 coverName: "Ethan Hunt", realName: "Tom Cruise", accessLevel: 8, compromised: false
 coverName: "Jim Phelps", realName: "Jon Voight", accessLevel: 9, compromised: true
 coverName: "Claire Phelps", realName: "Emmanuelle Beart", accessLevel: 5, compromised: false
 coverName: "Eugene Kittridge", realName: "Henry Czerny", accessLevel: 10, compromised: true
 coverName: "Franz Krieger", realName: "Jean Reno", accessLevel: 4, compromised: false
 coverName: "Luther Stickell", realName: "Ving Rhames", accessLevel: 4, compromised: false
 coverName: "Sarah Davies", realName: "Kristin Scott Thomas", accessLevel: 5, compromised: true
 coverName: "Max RotGrab", realName: "Vanessa Redgrave", accessLevel: 4, compromised: false
 coverName: "Hannah Williams", realName: "Ingeborga Dapkūnaitė", accessLevel: 5, compromised: true
 coverName: "Jack Harmon", realName: "Emilio Estevez", accessLevel: 6, compromised: true
 coverName: "Frank Barnes", realName: "Dale Dye", accessLevel: 9, compromised: false
 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        LSIAgent *ethan = [[LSIAgent alloc] initWithCoverName:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:8 compromised:false];
        LSIAgent *jim = [[LSIAgent alloc] initWithCoverName:@"Jim Phelps" realName:@"Jon Voight" accessLevel:9 compromised:true];
        LSIAgent *claire = [[LSIAgent alloc] initWithCoverName:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel:5 compromised:false];
        LSIAgent *eugene = [[LSIAgent alloc] initWithCoverName:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel:10 compromised:true];
        LSIAgent *franz = [[LSIAgent alloc] initWithCoverName:@"Franz Krieger" realName:@"Jean Reno" accessLevel:4 compromised:false];
        LSIAgent *luther = [[LSIAgent alloc] initWithCoverName:@"Luther Stickell" realName:@"Ving Rhames" accessLevel:4 compromised:false];
        LSIAgent *sarah = [[LSIAgent alloc] initWithCoverName:@"Sarah Davies" realName:@"Kristin Scott Thomas" accessLevel:5 compromised:true];
        LSIAgent *max = [[LSIAgent alloc] initWithCoverName:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel:4 compromised:false];
        LSIAgent *hannah = [[LSIAgent alloc] initWithCoverName:@"Hannah Williams" realName:@"Ingeborga Dapkūnaitė" accessLevel:5 compromised:true];
        LSIAgent *jack = [[LSIAgent alloc] initWithCoverName:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel:6 compromised:true];
        LSIAgent *frank = [[LSIAgent alloc] initWithCoverName:@"Frank Barnes" realName:@"Dale Dye" accessLevel:9 compromised:false];

        NSArray *agents = @[ethan, jim, claire, eugene, franz, luther, sarah, max, hannah, jack, frank];
        NSLog(@"%lu agents", (unsigned long)agents.count);

        int compromisedAgents = 0;
        for (LSIAgent *agent in agents) {
            if ([agent.compromised isEqualToNumber:@1]) {
                compromisedAgents++;
            }
        }
        NSLog(@"%d agents are compromised", compromisedAgents);

        int cleanAgents = 0;
        for (LSIAgent *agent in agents) {
            if ([agent.compromised isEqualToNumber:@0]) {
                cleanAgents++;
                NSLog(@"Agent is clean: %@", agent.coverName);
            }
        }
        NSLog(@"%d agents are clean", cleanAgents);
    }
    return 0;
}
