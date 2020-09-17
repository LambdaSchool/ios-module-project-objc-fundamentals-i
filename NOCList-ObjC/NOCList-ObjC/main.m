//
//  main.m
//  NOCList-ObjC
//
//  Created by Clayton Watkins on 9/17/20.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Agent Initialization
        LSIAgent *agent1 = [[LSIAgent alloc] init:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel: 8 compromised: NO];
        LSIAgent *agent2 = [[LSIAgent alloc] init:@"Jim Phelps" realName:@"Jon Voight" accessLevel: 9 compromised: YES];
        LSIAgent *agent3 = [[LSIAgent alloc] init:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel: 5 compromised: NO];
        LSIAgent *agent4 = [[LSIAgent alloc] init:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel: 10 compromised: YES];
        LSIAgent *agent5 = [[LSIAgent alloc] init:@"Franz Krieger" realName:@"Jean Reno" accessLevel: 4 compromised: NO];
        LSIAgent *agent6 = [[LSIAgent alloc] init:@"Luther Stickell" realName:@"Ving Rhames" accessLevel: 4 compromised: NO];
        LSIAgent *agent7 = [[LSIAgent alloc] init:@"Sarah Davies" realName:@"Kristin Scott Thomas" accessLevel: 5 compromised: YES];
        LSIAgent *agent8 = [[LSIAgent alloc] init:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel: 4 compromised: NO];
        LSIAgent *agent9 = [[LSIAgent alloc] init:@"Hannah Williams" realName:@"Ingeborga Dapkunaite" accessLevel: 5 compromised: YES];
        LSIAgent *agent10 = [[LSIAgent alloc] init:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel: 6 compromised: YES];
        LSIAgent *agent11 = [[LSIAgent alloc] init:@"Frank Barnes" realName:@"Dale Dye" accessLevel: 9 compromised: NO];
        
        // Adding agents to an Array
        NSArray *agentArray;
        agentArray = @[    agent1,
                           agent2,
                           agent3,
                           agent4,
                           agent5,
                           agent6,
                           agent7,
                           agent8,
                           agent9,
                           agent10,
                           agent11
                           ];
       
        
        
        
    }
    return 0;
}
