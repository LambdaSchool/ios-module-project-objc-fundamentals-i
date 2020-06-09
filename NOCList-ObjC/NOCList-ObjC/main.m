//
//  main.m
//  NOCList-ObjC
//
//  Created by Bhawnish Kumar on 6/8/20.
//  Copyright © 2020 Bhawnish Kumar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    
    //    coverName: "Ethan Hunt", realName: "Tom Cruise", accessLevel: 8, compromised: false
    //    coverName: "Jim Phelps", realName: "Jon Voight", accessLevel: 9, compromised: true
    //    coverName: "Claire Phelps", realName: "Emmanuelle Beart", accessLevel: 5, compromised: false
    //    coverName: "Eugene Kittridge", realName: "Henry Czerny", accessLevel: 10, compromised: true
    //    coverName: "Franz Krieger", realName: "Jean Reno", accessLevel: 4, compromised: false
    //    coverName: "Luther Stickell", realName: "Ving Rhames", accessLevel: 4, compromised: false
    //    coverName: "Sarah Davies", realName: "Kristin Scott Thomas", accessLevel: 5, compromised: true
    //    coverName: "Max RotGrab", realName: "Vanessa Redgrave", accessLevel: 4, compromised: false
    //    coverName: "Hannah Williams", realName: "Ingeborga Dapkūnaitė", accessLevel: 5, compromised: true
    //    coverName: "Jack Harmon", realName: "Emilio Estevez", accessLevel: 6, compromised: true
    //    coverName: "Frank Barnes", realName: "Dale Dye", accessLevel: 9, compromised: false
    
    LSIAgent *agent0 = [[LSIAgent alloc] initWithCoverName:(@"Ethan Hunt") realName:(@"Tom Cruise") accessLevel:8 compromised:NO];
    LSIAgent *agent1 = [[LSIAgent alloc] initWithCoverName:(@"Jim Phelps") realName:(@"Jon Voight") accessLevel:9 compromised:YES];
    LSIAgent *agent2 = [[LSIAgent alloc] initWithCoverName:(@"Claire Phelps") realName:(@"Emmanuelle Beart") accessLevel:5 compromised:NO];
    LSIAgent *agent3 = [[LSIAgent alloc] initWithCoverName:(@"Eugene Kittridge") realName:(@"Henry Czerny") accessLevel:10 compromised:YES];
    LSIAgent *agent4 = [[LSIAgent alloc] initWithCoverName:(@"Franz Krieger") realName:(@"Jean Reno") accessLevel:4 compromised:NO];
    LSIAgent *agent5 = [[LSIAgent alloc] initWithCoverName:(@"Luther Stickell") realName:(@"Ving Rhames") accessLevel:4 compromised:YES];
    LSIAgent *agent6 = [[LSIAgent alloc] initWithCoverName:(@"Sarah Davies") realName:(@"Kristin Scott Thomas") accessLevel:5 compromised:YES];
    LSIAgent *agent7 = [[LSIAgent alloc] initWithCoverName:(@"Max RotGrab") realName:(@"Vanessa Redgrave") accessLevel:4 compromised:NO];
    LSIAgent *agent8 = [[LSIAgent alloc] initWithCoverName:(@"Hannah Williams") realName:(@"Ingeborga Dapkūnaitė") accessLevel:5 compromised:YES];
    LSIAgent *agent9 = [[LSIAgent alloc] initWithCoverName:(@"Jack Harmon") realName:(@"Emilio Estevez") accessLevel:6 compromised:YES];
    LSIAgent *agent10 = [[LSIAgent alloc] initWithCoverName:(@"Frank Barnes") realName:(@"Dale Dye") accessLevel:9 compromised:NO];
    
    
    NSArray *agentsList = @[agent0, agent1, agent2, agent3, agent4, agent5, agent6, agent7, agent8, agent9, agent10];
    
    
    
    
    
    
    return 0;
}
