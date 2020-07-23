//
//  main.m
//  NOCList-ObjC
//
//  Created by Claudia Maciel on 7/22/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        LSIAgent *agent1 = [[LSIAgent alloc] initWithCoverName:@"Ethan Hunt" RealName:@"Tom Cruise" AccessLevel:8 Compromised:false];
        LSIAgent *agent2 = [[LSIAgent alloc] initWithCoverName:@"Jim Phelps" RealName:@"Jon Voight" AccessLevel:9 Compromised:true];
        LSIAgent *agent3 = [[LSIAgent alloc] initWithCoverName:@"Claire Phelps" RealName:@"Emmanuelle Beart" AccessLevel:5 Compromised:false];
        LSIAgent *agent4 = [[LSIAgent alloc] initWithCoverName:@"Eugene Kittridge" RealName:@"Henry Czerny" AccessLevel:10 Compromised:true];
        LSIAgent *agent5 = [[LSIAgent alloc] initWithCoverName:@"Franz Krieger" RealName:@"Jean Reno" AccessLevel:4 Compromised:false];
        LSIAgent *agent6 = [[LSIAgent alloc] initWithCoverName:@"Luther Stickell" RealName:@"Ving Rhames" AccessLevel:4 Compromised:false];
        LSIAgent *agent7 = [[LSIAgent alloc] initWithCoverName:@"Sarah Davies" RealName:@"Kristin Scott Thomas" AccessLevel:5 Compromised:true];
        LSIAgent *agent8 = [[LSIAgent alloc] initWithCoverName:@"Max RotGrab" RealName:@"Vanessa Redgrave" AccessLevel:4 Compromised:false];
        LSIAgent *agent9 = [[LSIAgent alloc] initWithCoverName:@"Hannah Williams" RealName:@"Ingeborga Dapkunaite" AccessLevel:5 Compromised:true];
        LSIAgent *agent10 = [[LSIAgent alloc] initWithCoverName:@"Jack Hermon" RealName:@"Emilio Estevez" AccessLevel:6 Compromised:true];
        LSIAgent *agent11 = [[LSIAgent alloc] initWithCoverName:@"Frank Barnes" RealName:@"Dale Dye" AccessLevel:9 Compromised:false];
    
        //Create Array
        NSArray *agents = @[agent1, agent2, agent3, agent4, agent5, agent6, agent7, agent8, agent9, agent10, agent11];
        
        //Find Compromised Agents
        int compromisedAgents = 0;
        for (LSIAgent *agent in agents) {
            if(agent.compromised.boolValue) {
                compromisedAgents += 1;
            }
        }
        
        NSLog(@"There are %i compromised agents", compromisedAgents);
        
        //Find clean agents
        int cleanAgents = 0;
        for (LSIAgent *agent in agents) {
            if(!agent.compromised.boolValue) {
                cleanAgents += 1;
                NSLog(@"Agent is clean: %@", agent.coverName);
            }
        }
        
        NSLog(@"There are %i clean agents", compromisedAgents);
        
    }
    
    return 0;
}
