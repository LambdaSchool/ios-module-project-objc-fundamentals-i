//
//  main.m
//  NOCList-ObjC
//
//  Created by Matthew Martindale on 7/22/20.
//  Copyright © 2020 Matthew Martindale. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        LSIAgent *agentHunt = [[LSIAgent alloc] initCoverName:@"Ethan Hunt" andRealName:@"Tom Cruise" andAccessLevel:8 andCompromised:NO];
        LSIAgent *agentPhelps = [[LSIAgent alloc] initCoverName:@"Jim Phelps" andRealName:@"Jon Voight" andAccessLevel:9 andCompromised:YES];
        LSIAgent *agentMrsPhelps = [[LSIAgent alloc] initCoverName:@"Claire Phelps" andRealName:@"Emmanuelle Beart" andAccessLevel:5 andCompromised:NO];
        LSIAgent *agentKittridge = [[LSIAgent alloc] initCoverName:@"Eugene Kittridge" andRealName:@"Henry Czerny" andAccessLevel:10 andCompromised:YES];
        LSIAgent *agentKrieger = [[LSIAgent alloc] initCoverName:@"Franz Krieger" andRealName:@"Jean Reno" andAccessLevel:4 andCompromised:NO];
        LSIAgent *agentStickell = [[LSIAgent alloc] initCoverName:@"Luther Stickell" andRealName:@"Ving Rhames" andAccessLevel:4 andCompromised:NO];
        LSIAgent *agentDavies = [[LSIAgent alloc] initCoverName:@"Sarah Davies" andRealName:@"Kristin Scott Thomas" andAccessLevel:5 andCompromised:YES];
        LSIAgent *agentRotGrab = [[LSIAgent alloc] initCoverName:@"Max RotGrab" andRealName:@"Vanessa Redgrave" andAccessLevel:4 andCompromised:NO];
        LSIAgent *agentWilliams = [[LSIAgent alloc] initCoverName:@"Hannah Williams" andRealName:@"Ingeborga Dapkunaite" andAccessLevel:5 andCompromised:YES];
        LSIAgent *agentHarmon = [[LSIAgent alloc] initCoverName:@"Jack Harmon" andRealName:@"Emilio Estevez" andAccessLevel:6 andCompromised:YES];
        LSIAgent *agentBarnes = [[LSIAgent alloc] initCoverName:@"Frank Barnes" andRealName:@"Dale Dye" andAccessLevel:9 andCompromised:NO];
        
    }
    return 0;
}
