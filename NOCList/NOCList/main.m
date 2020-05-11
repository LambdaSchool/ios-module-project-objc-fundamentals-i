//
//  main.m
//  NOCList
//
//  Created by Shawn Gee on 5/11/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        // Initialize agents
        
        LSIAgent *agent1 = [[LSIAgent alloc] initAgentWithCoverName:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:8 isCompromised:false];
        LSIAgent *agent2 = [[LSIAgent alloc] initAgentWithCoverName:@"Jim Phelps" realName:@"Jon Voight" accessLevel:9 isCompromised:true];
        LSIAgent *agent3 = [[LSIAgent alloc] initAgentWithCoverName:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel:5 isCompromised:false];
        LSIAgent *agent4 = [[LSIAgent alloc] initAgentWithCoverName:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel: 0 isCompromised:true];
        LSIAgent *agent5 = [[LSIAgent alloc] initAgentWithCoverName:@"Franz Krieger" realName:@"Jean Reno" accessLevel:4 isCompromised:false];
        LSIAgent *agent6 = [[LSIAgent alloc] initAgentWithCoverName:@"Luther Stickell" realName:@"Ving Rhames" accessLevel:4 isCompromised:false];
        LSIAgent *agent7 = [[LSIAgent alloc] initAgentWithCoverName:@"Sarah Davies" realName:@"Kristin Scott Thomas" accessLevel:5 isCompromised:true];
        LSIAgent *agent8 = [[LSIAgent alloc] initAgentWithCoverName:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel:4 isCompromised:false];
        LSIAgent *agent9 = [[LSIAgent alloc] initAgentWithCoverName:@"Hannah Williams" realName:@"Ingeborga Dapkūnaitė" accessLevel:5 isCompromised:true];
        LSIAgent *agent10 = [[LSIAgent alloc] initAgentWithCoverName:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel:6 isCompromised:true];
        LSIAgent *agent11 = [[LSIAgent alloc] initAgentWithCoverName:@"Frank Barnes" realName:@"Dale Dye" accessLevel:9 isCompromised:false];
        
        NSArray *agents = @[agent1, agent2, agent3, agent4, agent5, agent6, agent7, agent8, agent9, agent10, agent11];
        
        
        // Determine compromised agent count
        int compromisedAgentCount = 0;
        
        for (LSIAgent *agent in agents) {
            if (agent.isCompromised.boolValue == YES) {
                compromisedAgentCount++;
            }
        }
        
        NSLog(@"There are a total of %d compromised agents", compromisedAgentCount);
        
    }
    return 0;
}
