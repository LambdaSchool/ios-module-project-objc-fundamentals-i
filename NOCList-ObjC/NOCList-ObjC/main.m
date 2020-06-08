//
//  main.m
//  NOCList-ObjC
//
//  Created by Ezra Black on 6/8/20.
//  Copyright © 2020 Casanova Studios. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        LSIAgent *agent1 = [[LSIAgent alloc] initWithCoverName:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel: 8 compromised: YES];
        LSIAgent *agent2 = [[LSIAgent alloc] initWithCoverName:@"Jim Phelps" realName:@"Tom Cruise" accessLevel: 8 compromised: YES];
        LSIAgent *agent3 = [[LSIAgent alloc] initWithCoverName:@"Claire Phelps" realName:@"Tom Cruise" accessLevel: 8 compromised: YES];
        LSIAgent *agent4 = [[LSIAgent alloc] initWithCoverName:@"Eugene Kittridge" realName:@"Tom Cruise" accessLevel: 8 compromised: YES];
        LSIAgent *agent5 = [[LSIAgent alloc] initWithCoverName:@"Franz Krieger" realName:@"Tom Cruise" accessLevel: 8 compromised: YES];
        LSIAgent *agent6 = [[LSIAgent alloc] initWithCoverName:@"Luther Stickell" realName:@"Tom Cruise" accessLevel: 8 compromised: YES];
        LSIAgent *agent7 = [[LSIAgent alloc] initWithCoverName:@"Sarah Davies" realName:@"Tom Cruise" accessLevel: 8 compromised: YES];
        LSIAgent *agent8 = [[LSIAgent alloc] initWithCoverName:@"Max RotGrab" realName:@"Tom Cruise" accessLevel: 8 compromised: YES];
        LSIAgent *agent9 = [[LSIAgent alloc] initWithCoverName:@"Hannah Williams" realName:@"Tom Cruise" accessLevel: 8 compromised: YES];
        LSIAgent *agent10 = [[LSIAgent alloc] initWithCoverName:@"Jack Harmon" realName:@"Tom Cruise" accessLevel: 8 compromised: YES];
        LSIAgent *agent11 = [[LSIAgent alloc] initWithCoverName:@"Frank Barnes" realName:@"Tom Cruise" accessLevel: 8 compromised: YES];
        
        NSArray *agents =@[agent1,
                           agent2,
                           agent3,
                           agent4,
                           agent5,
                           agent6,
                           agent7,
                           agent8,
                           agent9,
                           agent10,
                           agent11];
        
    }
    return 0;
}
