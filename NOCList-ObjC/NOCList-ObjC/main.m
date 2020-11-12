//
//  main.m
//  NOCList-ObjC
//
//  Created by Rob Vance on 11/11/20.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Agent Initialization
        
        LSIAgent *agent1 = [[LSIAgent alloc] init:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:8 compromised:NO];
        LSIAgent *agent2 = [[LSIAgent alloc] init:@"Jim Phelps" realName:@"Jon Voight" accessLevel:9 compromised:YES];
        LSIAgent *agent3 = [[LSIAgent alloc] init:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel:5 compromised:NO];
        LSIAgent *agent4 = [[LSIAgent alloc] init:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel:10 compromised:YES];
        LSIAgent *agent5 = [[LSIAgent alloc] init:@"Franz Krieger" realName:@"Jean Reno" accessLevel:4 compromised:NO];
        LSIAgent *agent6 = [[LSIAgent alloc] init:@"Luther Stickel" realName:@"Ving Rhames" accessLevel:4 compromised:NO];
        LSIAgent *agent7 = [[LSIAgent alloc] init:@"Sarah Davies" realName:@"Kristin Scott Thomas" accessLevel:5 compromised:NO];
        LSIAgent *agent8 = [[LSIAgent alloc] init:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel:4 compromised:NO];
        LSIAgent *agent9 = [[LSIAgent alloc] init:@"Hanna Williams" realName:@"Ingeborga Dapkūnaitė" accessLevel:5 compromised:NO];
        LSIAgent *agent10 = [[LSIAgent alloc] init:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel:6 compromised:NO];
        LSIAgent *agent11 = [[LSIAgent alloc] init:@"Frank Barnes" realName:@"Dale Dye" accessLevel:9 compromised:NO];;
        
        // Adding agents to array
        
        NSArray *agentArray;
        agentArray = @[ agent1, agent2, agent3, agent4, agent5, agent6, agent7, agent8, agent9, agent10, agent11];
        
        // Printing out list of compromised agents
        
        int d = 0;
        for (id agent in agentArray) {
            if ([agent compromised] == [NSNumber numberWithBool:YES]) {
                d += 1;
            }
        }
        NSLog(@"\n%d agents are compromised.", d);
        
        // Printing list of clean agents
        
        int i = 0;
        for (id agent in agentArray) {
            if ([agent compromised] == [NSNumber numberWithBool:NO]) {
                i += 1;
                NSLog(@"%@ is clean", [agent coverName]);
            }
        }
        NSLog(@"\n%i agents are clean.", i);
        
        // Printing list of high risk agents and if they are compromised
        
        for (id agent in agentArray) {
            if ([[agent accessLevel] isGreaterThanOrEqualTo: [NSNumber numberWithInt: 8]]) {
                if ([agent compromised] == [NSNumber numberWithBool:YES]) {
                    NSLog(@"\n\n%@, level: %@ **WARNING** **COMPROMISED**", [agent realName], [agent accessLevel]);
                } else if ([agent compromised] == [NSNumber numberWithBool:NO]) {
                    NSLog(@"\n\n%@, level: %@", [agent realName], [agent accessLevel]);
                }
            }
        }
        
        // Sorting agents by access level
        
        int lowLevel = 0;
        int midLevel = 0;
        int highLevel = 0;
        
        for (id agent in agentArray) {
            if ([[agent accessLevel] isLessThanOrEqualTo: [NSNumber numberWithInt: 4]]) {
                lowLevel += 1;
            } else if (([[agent accessLevel] isLessThanOrEqualTo: [NSNumber numberWithInt: 7]]) && ([[agent accessLevel] isGreaterThan: [NSNumber numberWithInt:4]])) {
                midLevel += 1;
            } else {
                highLevel += 1;
            }
        }
        NSLog(@"\n\n%d are low level agents, \n%d are mid level agents, \n%d are high level agents", lowLevel, midLevel, highLevel);
    }
    return 0;
}
