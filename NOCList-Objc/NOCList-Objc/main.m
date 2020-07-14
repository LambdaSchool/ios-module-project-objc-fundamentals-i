//
//  main.m
//  NOCList-Objc
//
//  Created by Kelson Hartle on 7/13/20.
//  Copyright © 2020 Kelson Hartle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        LSIAgent *agentOne = [[LSIAgent alloc] initWithCoverName:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:8 compromised: FALSE];
        LSIAgent *agentTwo = [[LSIAgent alloc] initWithCoverName:@"Jim Phelps" realName:@"Jon Voight" accessLevel:9 compromised: TRUE];
        LSIAgent *agentThree = [[LSIAgent alloc] initWithCoverName:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel:5 compromised: FALSE];
        LSIAgent *agentFour = [[LSIAgent alloc] initWithCoverName:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel:10 compromised: TRUE];
        LSIAgent *agentFive = [[LSIAgent alloc] initWithCoverName:@"Franz Krieger" realName:@"Jean Reno" accessLevel:4 compromised: FALSE];
        LSIAgent *agentSix = [[LSIAgent alloc] initWithCoverName:@"Luther Stickell" realName:@"Ving Rhames" accessLevel:4 compromised: FALSE];
        LSIAgent *agentSeven = [[LSIAgent alloc] initWithCoverName:@"Sarah Davies" realName:@"Kristin Scott Thomas" accessLevel:5 compromised: TRUE];
        LSIAgent *agentEight = [[LSIAgent alloc] initWithCoverName:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel:4 compromised: FALSE];
        LSIAgent *agentNine = [[LSIAgent alloc] initWithCoverName:@"Hannah Williams" realName:@"Ingeborga Dapkūnaitė" accessLevel:5 compromised: TRUE];
        LSIAgent *agentTen = [[LSIAgent alloc] initWithCoverName:@"Jack Harmon" realName:@"EMilio Estevez" accessLevel:6 compromised: TRUE];
        LSIAgent *agentEleven = [[LSIAgent alloc] initWithCoverName:@"Frank Barnes" realName:@"Dale Dye" accessLevel:9 compromised: FALSE];
        
        NSMutableArray *secretAgents = [NSMutableArray new];
        [secretAgents addObject:agentOne];
        [secretAgents addObject:agentTwo];
        [secretAgents addObject:agentThree];
        [secretAgents addObject:agentFour];
        [secretAgents addObject:agentFive];
        [secretAgents addObject:agentSix];
        [secretAgents addObject:agentSeven];
        [secretAgents addObject:agentEight];
        [secretAgents addObject:agentNine];
        [secretAgents addObject:agentTen];
        [secretAgents addObject:agentEleven];
        
        [agentFour discoverWhoIsCompromised:secretAgents];
        [agentFour findCleanAgents:secretAgents];
        [agentFour determineHighRiskAgents:secretAgents];
    }
    return 0;
}
