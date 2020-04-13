//
//  main.m
//  NOClist-ObjC
//
//  Created by Enrique Gongora on 4/13/20.
//  Copyright © 2020 Enrique Gongora. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        LSIAgent *ethan = [[LSIAgent alloc]initWithCoverName:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:8 compromised:NO];
        LSIAgent *jim  = [[LSIAgent alloc]initWithCoverName:@"Jim Phelps" realName:@"Jon Voight" accessLevel:9 compromised:YES];
        LSIAgent *claire = [[LSIAgent alloc]initWithCoverName:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel:5 compromised:NO];
        LSIAgent *eugene = [[LSIAgent alloc]initWithCoverName:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel:10 compromised:YES];
        LSIAgent *franz = [[LSIAgent alloc]initWithCoverName:@"Franz Krieger" realName:@"Jean Reno" accessLevel:4 compromised:NO];
        LSIAgent *luther = [[LSIAgent alloc]initWithCoverName:@"Luther Stickell" realName:@"Ving Rhames" accessLevel:4 compromised:NO];
        LSIAgent *sarah = [[LSIAgent alloc]initWithCoverName:@"Sarah Davies" realName:@"Kristin Scott Thomas" accessLevel:5 compromised:YES];
        LSIAgent *max = [[LSIAgent alloc]initWithCoverName:@"Max RotGrab" realName:@"Vanessa RedGrave" accessLevel:4 compromised:NO];
        LSIAgent *hannah = [[LSIAgent alloc]initWithCoverName:@"Hannah Williams" realName:@"Ingeborga Dapkūnaitė" accessLevel:5 compromised:YES];
        LSIAgent *jack = [[LSIAgent alloc]initWithCoverName:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel:6 compromised:YES];
        LSIAgent *frank = [[LSIAgent alloc]initWithCoverName:@"Frank Barnes" realName:@"Dale Dye" accessLevel:9 compromised:NO];
        
        NSArray *agents = [[NSArray alloc]initWithObjects:ethan, jim, claire, eugene, franz, luther, sarah, max, hannah, jack, frank, nil];
        
        NSMutableArray<LSIAgent *> *compromisedAgents = [[NSMutableArray alloc] init];
        
        int compromisedAgentCount = 0;
        for (LSIAgent *agent in agents) {
            if (agent.compromised.boolValue) {
                compromisedAgentCount ++;
                [compromisedAgents addObject:agent];
            }
        }
        for (LSIAgent *agent in compromisedAgents) {
            NSLog(@"%@ is compromised", agent.coverName);
        }
        
        NSLog(@"There are %i compromised agents.", compromisedAgentCount);
        
        int agentCount = 0;
        for (LSIAgent *agent in agents) {
            if (agent.compromised.boolValue == NO) {
                agentCount ++;
                NSLog(@"Agent is clean: %@", agent.coverName);
            }
        }
        NSLog(@"There is %i clean agents", agentCount);
        
        int compAgentCount = 0;
        for (LSIAgent *agent in agents) {
            if (agent.compromised.boolValue) {
                compAgentCount ++;
                
            }
        }
        
        for (LSIAgent *agent in agents) {
            if (agent.accessLevel.intValue >= 8) {
                if (agent.compromised.boolValue) {
                    NSLog(@"Agent %@ with access level %@ is considered high risk. **WARNING** **COMPROMISED**", agent.realName, agent.accessLevel);
                } else {
                    NSLog(@"Agent %@ with access level %@ is considered high risk.", agent.realName, agent.accessLevel);
                }
            }
        }
        int lowLevelAgents = 0;
        int midLevelAgents = 0;
        int highLevelAgents = 0;
        for (LSIAgent *agent in agents) {
            if (agent.accessLevel.intValue <= 4) {
                lowLevelAgents ++;
            } else if (agent.accessLevel.intValue >= 8) {
                highLevelAgents ++;
            } else {
                midLevelAgents ++;
            }
        }
    }
    return 0;
}
