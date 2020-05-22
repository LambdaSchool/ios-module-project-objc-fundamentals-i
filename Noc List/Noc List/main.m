//
//  main.m
//  Noc List
//
//  Created by Alex Thompson on 5/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        LSIAgent *agent1 = [[LSIAgent alloc] initAgentWithCoverName:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:8 isCompromised:FALSE];
        
        LSIAgent *agent2 = [[LSIAgent alloc] initAgentWithCoverName:@"Jim Phelps" realName:@"Jon Voight" accessLevel:9 isCompromised:TRUE];
        
        LSIAgent *agent3 = [[LSIAgent alloc] initAgentWithCoverName:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel:5 isCompromised:FALSE];
        
        LSIAgent *agent4 = [[LSIAgent alloc] initAgentWithCoverName:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel:10 isCompromised:TRUE];
        
        LSIAgent *agent5 = [[LSIAgent alloc] initAgentWithCoverName:@"Franz Krieger" realName:@"Jean Reno" accessLevel:4 isCompromised:FALSE];
        
        LSIAgent *agent6 = [[LSIAgent alloc] initAgentWithCoverName:@"Luther Stickell" realName:@"Ving Rhames" accessLevel:4 isCompromised:FALSE];
        
        LSIAgent *agent7 = [[LSIAgent alloc] initAgentWithCoverName:@"Sarah Davies" realName:@"Kristen Scott Thomas" accessLevel:5 isCompromised:TRUE];
        
        LSIAgent *agent8 = [[LSIAgent alloc] initAgentWithCoverName:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel:4 isCompromised:FALSE];
        
        LSIAgent *agent9 = [[LSIAgent alloc] initAgentWithCoverName:@"Hannah Williums" realName:@"Ingeborga Dapkūnaitė" accessLevel:5 isCompromised:TRUE];
        
        LSIAgent *agent10 = [[LSIAgent alloc] initAgentWithCoverName:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel:6 isCompromised:TRUE];
        
        LSIAgent *agent11 = [[LSIAgent alloc] initAgentWithCoverName:@"Frank Barnes" realName:@"Dale Dye" accessLevel:9 isCompromised:FALSE];
        
        NSArray *agents = @[agent1, agent2, agent3, agent4, agent5, agent6, agent7, agent8, agent9, agent10, agent11];
        
        int compromisedAgentCount = [LSIAgent numberOfCompromisedAgentsInArray:agents];
        
        NSLog(@"There are a total of %d compromised agents.", compromisedAgentCount);
        
        int cleanAgentCount = [LSIAgent numberOfCleanAgentsInArray:agents];
        
        NSLog(@"There are a total of %d clean agents", cleanAgentCount);
        
        [LSIAgent printHighRiskAgentsInArray:agents];
        NSLog(@"");
        
        AgentCounts agentCounts = [LSIAgent countLowMidHighRiskAgentsInArray:agents];
        NSLog(@"There are %d low level agents, %d mid level agents, %d high level agents.", agentCounts.lowLevel, agentCounts.midLevel, agentCounts.highLevel);
        
    }
    return 0;
}
