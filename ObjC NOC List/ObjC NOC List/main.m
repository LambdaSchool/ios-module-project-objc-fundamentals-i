//
//  main.m
//  ObjC NOC List
//
//  Created by Chris Gonzales on 4/13/20.
//  Copyright © 2020 Chris Gonzales. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        LSIAgent *agent1 = [[LSIAgent alloc]initWithCodeName:@"Ethan Hunt"
                                                    RealName:@"Tom Cruise"
                                                 AccessLevel:8
                                               IsCompromised:0];
        LSIAgent *agent2 = [[LSIAgent alloc]initWithCodeName:@"Jim Phelps"
                                                    RealName:@"Jon Voight"
                                                 AccessLevel:9
                                               IsCompromised:1];
        LSIAgent *agent3 = [[LSIAgent alloc]initWithCodeName:@"Claire Phelps"
                                                    RealName:@"Emmanuelle Beart"
                                                 AccessLevel:5
                                               IsCompromised: 0];
        LSIAgent *agent4 = [[LSIAgent alloc]initWithCodeName:@"Eugene Kittridge"
                                                    RealName:@"Henry Czerny"
                                                 AccessLevel:10
                                               IsCompromised:1];
        LSIAgent *agent5 = [[LSIAgent alloc]initWithCodeName:@"Franz Krieger"
                                                    RealName:@"Jean Reno"
                                                 AccessLevel:4 IsCompromised:0];
        LSIAgent *agent6 = [[LSIAgent alloc]initWithCodeName:@"Luther Stickell"
                                                    RealName:@"Ving Rhames"
                                                 AccessLevel:4
                                               IsCompromised:0];
        LSIAgent *agent7 = [[LSIAgent alloc]initWithCodeName:@"Sarah Davies"
                                                    RealName:@"Kristin Scott Thomas"
                                                 AccessLevel:5 IsCompromised:1];
        LSIAgent *agent8 = [[LSIAgent alloc]initWithCodeName:@"Max RotGrab"
                                                    RealName:@"Vanessa Redgrave"
                                                 AccessLevel:4 IsCompromised:0];
        LSIAgent *agent9 = [[LSIAgent alloc]initWithCodeName:@"Hannah Williams"
                                                    RealName:@"Ingeborga Dapkūnaitė"
                                                 AccessLevel:5
                                               IsCompromised:1];
        LSIAgent *agent10 = [[LSIAgent alloc]initWithCodeName:@"Jack Harmon"
                                                     RealName:@"Emilio Estevez"
                                                  AccessLevel:6
                                                IsCompromised:1];
        LSIAgent *agent11 = [[LSIAgent alloc]initWithCodeName:@"Frank Barnes"
                                                     RealName:@"Dale Dye"
                                                  AccessLevel:9
                                                IsCompromised:0];
        
        NSArray *agentArray = [NSArray arrayWithObjects:agent1, agent2, agent3, agent4, agent5, agent6,agent7,agent8,agent9,agent10,agent11];
        
        
    }
    return 0;
}
