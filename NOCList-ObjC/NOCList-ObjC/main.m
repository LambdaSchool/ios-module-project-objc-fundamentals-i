//
//  main.m
//  NOCList-ObjC
//
//  Created by Jorge Alvarez on 3/16/20.
//  Copyright © 2020 Jorge Alvarez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSILog.h"
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // MARK: - Step 2
        
        LSIAgent *agent1 = [[LSIAgent alloc] initWithCoverName:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:8 compromised:NO];
        LSIAgent *agent2 = [[LSIAgent alloc] initWithCoverName:@"Jim Phelps" realName:@"Jon Voight" accessLevel:9 compromised:YES];
        LSIAgent *agent3 = [[LSIAgent alloc] initWithCoverName:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel:5 compromised:NO];
        LSIAgent *agent4 = [[LSIAgent alloc] initWithCoverName:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel:10 compromised:YES];
        LSIAgent *agent5 = [[LSIAgent alloc] initWithCoverName:@"Franz Krieger" realName:@"Jean Reno" accessLevel:4 compromised:NO];
        LSIAgent *agent6 = [[LSIAgent alloc] initWithCoverName:@"Luther Stickell" realName:@"Ving Rhames" accessLevel:4 compromised:NO];
        LSIAgent *agent7 = [[LSIAgent alloc] initWithCoverName:@"Sarah Davies" realName:@"Kristen Scott Thomas" accessLevel:5 compromised:YES];
        LSIAgent *agent8 = [[LSIAgent alloc] initWithCoverName:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel:4 compromised:NO];
        LSIAgent *agent9 = [[LSIAgent alloc] initWithCoverName:@"Hannah Williams" realName:@"Ingeborga Dapkunaite" accessLevel:5 compromised:YES];
        LSIAgent *agent10 = [[LSIAgent alloc] initWithCoverName:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel:6 compromised:YES];
        LSIAgent *agent11 = [[LSIAgent alloc] initWithCoverName:@"Frank Barnes" realName:@"Dale Dye" accessLevel:9 compromised:NO];
        
        NSArray<LSIAgent *> *agentsArray = @[agent1, agent2, agent3, agent4, agent5, agent6, agent7, agent8, agent9, agent10, agent11];
        
        // MARK: - Step 3
        
        NSLog(@"STEP 3 ---");
        int compromisedCount = 0;
        for (LSIAgent *agent in agentsArray) {
            if (agent.compromised.boolValue) {
                compromisedCount += 1;
            }
        }
        NSLog(@"Compromised agents total: %i", compromisedCount);
        NSLog(@"");
        
        // MARK: - Step 4
        
        NSLog(@"STEP 4 ----");
        int cleanCount = 0;
        for (LSIAgent *agent in agentsArray) {
            if (!agent.compromised.boolValue) {
                NSLog(@"Agent is clean: %@", agent.coverName);
                cleanCount += 1;
            }
        }
        NSLog(@"Clean agents total: %i", cleanCount);
        NSLog(@"");
        
        // MARK: - Step 5
        
        NSLog(@"STEP 5 -----");
        for (LSIAgent *agent in agentsArray) {
            if (agent.accessLevel.intValue >= 8) {
                if (agent.compromised.boolValue) {
                    NSLog(@"%@, level: %i **WARNING** **COMPROMISED**", agent.realName, agent.accessLevel.intValue);
                } else {
                    NSLog(@"%@, level: %i", agent.realName, agent.accessLevel.intValue);
                }
            }
        }
        NSLog(@"");
        
        // MARK: - Step 6
        
        NSLog(@"STEP 6 ------");

    }
    return 0;
}
