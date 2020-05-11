//
//  main.m
//  NOCList-ObjC
//
//  Created by Lydia Zhang on 5/11/20.
//  Copyright © 2020 Lydia Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        LSIAgent *agent1 = [[LSIAgent alloc]initWithCoverName:@"Ethan Hunt" RealName:@"Tom Cruise" AccessLevel:8 Compromised:0];
        LSIAgent *agent2 = [[LSIAgent alloc]initWithCoverName:@"Jim Phelps" RealName:@"Jon Voight" AccessLevel:9 Compromised:1];
        LSIAgent *agent3 = [[LSIAgent alloc]initWithCoverName:@"Claire Phelps" RealName:@"Emmanuelle Beart" AccessLevel:5 Compromised:0];
        LSIAgent *agent4 = [[LSIAgent alloc]initWithCoverName:@"Eugene Kittridge" RealName:@"Henry Czerny" AccessLevel:10 Compromised:1];
        LSIAgent *agent5 = [[LSIAgent alloc]initWithCoverName:@"Franz Krieger" RealName:@"Jean Reno" AccessLevel:4 Compromised:0];
        LSIAgent *agent6 = [[LSIAgent alloc]initWithCoverName:@"Luther Stickell" RealName:@"Ving Rhames" AccessLevel:4 Compromised:0];
        LSIAgent *agent7 = [[LSIAgent alloc]initWithCoverName:@"Sarah Davies" RealName:@"Kristin Scott Thomas" AccessLevel:5 Compromised:1];
        LSIAgent *agent8 = [[LSIAgent alloc]initWithCoverName:@"Max RotGrab" RealName:@"Vanessa Redgrave" AccessLevel:4 Compromised:0];
        LSIAgent *agent9 = [[LSIAgent alloc]initWithCoverName:@"Hannah Williams" RealName:@"Ingeborga Dapkūnaitė" AccessLevel:5 Compromised:1];
        LSIAgent *agent10 = [[LSIAgent alloc]initWithCoverName:@"Jack Harmon" RealName:@"Emilio Estevez" AccessLevel:6 Compromised:1];
        LSIAgent *agent11 = [[LSIAgent alloc]initWithCoverName:@"Frank Barnes" RealName:@"Dale Dye" AccessLevel:9 Compromised:0];
        
        NSArray *agents = [NSArray arrayWithObjects: agent1,agent2,agent3,agent4,agent5,agent6,agent7,agent8,agent9,agent10,agent11, nil];
        
        int compromisedAgents = 0;
        for (LSIAgent *agent in agents) {
            if (agent.compromised.boolValue == 1) {
                compromisedAgents ++;
            }
        }
        NSLog(@"%i agents compromised", compromisedAgents);
        
        int uncompromisedAgents = 0;
        for (LSIAgent *agent in agents) {
            if (agent.compromised.boolValue == 0) {
                NSLog(@"%@ is clean", agent.coverName);
                uncompromisedAgents ++;
            }
        }
        NSLog(@"%i agents clean", uncompromisedAgents);
        
        for (LSIAgent *agent in agents) {
            if (agent.accessLevel.intValue >= 8) {
                if (agent.compromised.boolValue == 0) {
                    NSLog(@"%@, Level: %li", agent.realName, (long)agent.accessLevel.integerValue);
                } else {
                    NSLog(@"%@, Level: %li  **WARNING** **COMPROMISED**", agent.realName, (long)agent.accessLevel.integerValue);
                }
            }
        }
        
        int low = 0;
        int mid = 0;
        int high = 0;
        
        for (LSIAgent *agent in agents) {
            if (agent.accessLevel.intValue <= 4) {
                low ++;
            } if (agent.accessLevel.intValue > 4 && agent.accessLevel.intValue <= 7) {
                mid ++;
            } if (agent.accessLevel.intValue >= 8) {
                high ++;
            }
        }
        NSLog(@"High: %i, Mid: %i, Low: %i", high, mid, low);
        
        int level = 0;
        NSMutableArray *agentsAscendingAccessCoverName = [[NSMutableArray alloc]init];
        NSMutableArray *agentsAscendingAccessLevel = [[NSMutableArray alloc]init];
        while (level <= 10) {
            for (LSIAgent *agent in agents) {
                if (agent.accessLevel.integerValue == level) {
                    [agentsAscendingAccessCoverName addObject: agent.coverName];
                    [agentsAscendingAccessLevel addObject: agent.accessLevel];
                }
            }
            level ++;
        }
        NSLog(@"Agent: %@, Level: %@", agentsAscendingAccessCoverName, agentsAscendingAccessLevel);
    }
    return 0;
}
