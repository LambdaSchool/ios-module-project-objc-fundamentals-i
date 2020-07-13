//
//  main.m
//  NOCList-ObjC
//
//  Created by Enzo Jimenez-Soto on 7/13/20.
//  Copyright © 2020 Enzo Jimenez-Soto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSILog.h"
#import "LSIAgent.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        LSIAgent *agent1 = [[LSIAgent alloc]initWithCoverName:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:8 compromised:NO];
        LSIAgent *agent2 = [[LSIAgent alloc]initWithCoverName:@"Jim Phelps" realName:@"John Voight" accessLevel:9 compromised:YES];
        LSIAgent *agent3 = [[LSIAgent alloc]initWithCoverName:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel:5 compromised:NO];
        LSIAgent *agent4 = [[LSIAgent alloc]initWithCoverName:@"Eugene Kittride" realName:@"Henry Czerny" accessLevel:10 compromised:YES];
        LSIAgent *agent5 = [[LSIAgent alloc]initWithCoverName:@"Franz Krieger" realName:@"Jean Reno" accessLevel:4 compromised:NO];
        LSIAgent *agent6 = [[LSIAgent alloc]initWithCoverName:@"Luther Stickell" realName:@"Ving Rhames" accessLevel:4 compromised:NO];
        LSIAgent *agent7 = [[LSIAgent alloc]initWithCoverName:@"Sarah Davies" realName:@"Kristen Scott Thomas" accessLevel:5 compromised:YES];
        LSIAgent *agent8 = [[LSIAgent alloc]initWithCoverName:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel:4 compromised:NO];
        LSIAgent *agent9 = [[LSIAgent alloc]initWithCoverName:@"Hannah Williams" realName:@"Ingeborga Dapkunaite" accessLevel:5 compromised:YES];
        LSIAgent *agent10 = [[LSIAgent alloc]initWithCoverName:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel:6 compromised:YES];
        LSIAgent *agent11 = [[LSIAgent alloc]initWithCoverName:@"Frank Barnes" realName:@"Dale Dye" accessLevel:9 compromised:NO];
        
        NSArray<LSIAgent *> *agentsArray = @[agent1, agent2, agent3, agent4, agent5, agent6, agent7, agent8, agent9, agent10, agent11];
        
        
        NSLog(@"----COMPROMISED AGENTS----");
        NSLog(@"");
        int compromisedCount = 0;
        for (LSIAgent *agent in agentsArray) {
            if (agent.compromised.boolValue) {
                compromisedCount +=1;
            }
        }
        NSLog(@"Compromised agents total: %i", compromisedCount);
        NSLog(@"");
        
        NSLog(@"----CLEAN AGENTS----");
        NSLog(@"");
        int cleanCount = 0;
        for (LSIAgent *agent in agentsArray) {
            if (!agent.compromised.boolValue) {
                NSLog(@"Agent is clean: %@", agent.coverName);
                cleanCount += 1;
            }
        }
        NSLog(@"");
        NSLog(@"Clean agents total: %i", cleanCount);
        NSLog(@"");
        
        NSLog(@"----HIGH LEVEL AGENTS----");
        NSLog(@"");
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
        NSLog(@"----AGENT LEVELS----");
        NSLog(@"");
        int lowCount = 0;
        int midCount = 0;
        int highCount = 0;
        for (LSIAgent *agent in agentsArray) {
            if (agent.accessLevel.intValue >= 8) {
                highCount += 1;
            }
            else if (agent.accessLevel.intValue >= 5 && agent.accessLevel.intValue <= 7) {
                midCount += 1;
            }
            else {
                lowCount += 1;
            }
        }
        NSLog(@"%i Low Level Agents, %i Mid Level Agents, and %i High Level Agents", lowCount, midCount, highCount);
        NSLog(@"");
        NSLog(@"----AGENT LEVELS IN ORDER----");
        NSLog(@"");
        NSMutableArray<LSIAgent *> *array = [[NSMutableArray alloc] initWithArray:agentsArray];
        
        long count = array.count;
        bool swapped = YES;
        while (swapped)
        {
            swapped = NO;
            
            for (int i = 1; i < count; i++)
            {
                int x = [array[i-1].accessLevel intValue];
                int y = [array[i].accessLevel intValue];
                
                if (x > y)
                {
                    [array exchangeObjectAtIndex:(i-1) withObjectAtIndex:i];
                    swapped = YES;
                }
            }
        }
        for (LSIAgent *agent in array) {
            NSLog(@"%@, level: %i", agent.coverName, agent.accessLevel.intValue);
        }
        
        NSLog(@"");
        
    }
    return 0;
}
