//
//  main.m
//  NOCList-ObjC
//
//  Created by James McDougall on 11/16/20.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        LSIAgent *agent1 = [[LSIAgent alloc] initWithCoverName:@"Ethan Hunt"  realName:@"Tom Cruise" accessLevel: 8 compromised: false];
        
        LSIAgent *agent2 = [[LSIAgent alloc] initWithCoverName:@"Jim Phelps"  realName:@"Jon Voight" accessLevel: 9 compromised: true];
        
        LSIAgent *agent3 = [[LSIAgent alloc] initWithCoverName:@"Claire Phelps"  realName:@"Emmanuelle Beart" accessLevel: 5 compromised: false];
        
        LSIAgent *agent4 = [[LSIAgent alloc] initWithCoverName:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel: 10 compromised: true];
        
        LSIAgent *agent5 = [[LSIAgent alloc] initWithCoverName:@"Franz Krieger" realName:@"Jean Reno" accessLevel: 4 compromised: false];
        
        LSIAgent *agent6 = [[LSIAgent alloc] initWithCoverName:@"Luther Stickell" realName:@"Ving Rhames" accessLevel: 4 compromised: false];
        
        LSIAgent *agent7 = [[LSIAgent alloc] initWithCoverName:@"Sarah Davies" realName:@"Kristin Scott Thomas" accessLevel: 5 compromised: true];
        
        LSIAgent *agent8 = [[LSIAgent alloc] initWithCoverName:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel: 4 compromised: false];
        
        LSIAgent *agent9 = [[LSIAgent alloc] initWithCoverName:@"Hannah Williams" realName:@"Ingebora Dapkūnaitė" accessLevel: 5 compromised: true];
        
        LSIAgent *agent10 = [[LSIAgent alloc] initWithCoverName:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel: 6 compromised: true];
        
        LSIAgent *agent11 = [[LSIAgent alloc] initWithCoverName:@"Frank Barnes" realName:@"Dale Dye" accessLevel: 9 compromised: false];
        
        NSArray *agentArray = @[agent1, agent2, agent3, agent4, agent5, agent6, agent7, agent8, agent9, agent10, agent11];
        
    }
    return 0;
}
