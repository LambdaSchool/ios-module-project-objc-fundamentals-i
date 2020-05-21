//
//  main.m
//  NOCList-ObjC
//
//  Created by Jessie Ann Griffin on 5/20/20.
//  Copyright © 2020 Jessie Griffin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        LSIAgent *agent1 = [[LSIAgent alloc] initWithCover:@"Ethan Hunt"
                                                  andName:@"Tom Cruise"
                                                 andLevel:8
                                                andStatus:NO];
        LSIAgent *agent2 = [[LSIAgent alloc] initWithCover:@"Jim Phelps"
                                                  andName:@"Jon Voight"
                                                 andLevel:9
                                                andStatus:YES];
        LSIAgent *agent3 = [[LSIAgent alloc] initWithCover:@"Claire Phelps"
                                                  andName:@"Emmanuelle Beart"
                                                 andLevel:5
                                                andStatus:NO];
        LSIAgent *agent4 = [[LSIAgent alloc] initWithCover:@"Eugene Kittridge"
                                                  andName:@"Henry Czerny"
                                                 andLevel:10
                                                andStatus:YES];
        LSIAgent *agent5 = [[LSIAgent alloc] initWithCover:@"Franz Krieger"
                                                  andName:@"Jean Reno"
                                                 andLevel:4
                                                andStatus:NO];
        LSIAgent *agent6 = [[LSIAgent alloc] initWithCover:@"Luther Stickell"
                                                  andName:@"Ving Rhames"
                                                 andLevel:4
                                                andStatus:NO];
        LSIAgent *agent7 = [[LSIAgent alloc] initWithCover:@"Sarah Davies"
                                                  andName:@"Kristin Scott Thomas"
                                                 andLevel:5
                                                andStatus:YES];
        LSIAgent *agent8 = [[LSIAgent alloc] initWithCover:@"Max RotGrab"
                                                  andName:@"Vanessa Redgrave"
                                                 andLevel:4
                                                andStatus:NO];
        LSIAgent *agent9 = [[LSIAgent alloc] initWithCover:@"Hannah Williams"
                                                   andName:@"Ingeborga Dapkūnaitė"
                                                  andLevel:5
                                                 andStatus:YES];
        LSIAgent *agent10 = [[LSIAgent alloc] initWithCover:@"Jack Harmon"
                                                   andName:@"Emilio Estevez"
                                                  andLevel:6
                                                 andStatus:YES];
        LSIAgent *agent11 = [[LSIAgent alloc] initWithCover:@"Frank Barnes"
                                                   andName:@"Dale Dye"
                                                  andLevel:9
                                                 andStatus:NO];

        NSArray *lsiAgentsArray = @[agent1, agent2, agent3, agent4, agent5, agent6, agent7, agent8, agent9, agent10, agent11];

        NSLog(@"There are %d compromised agents in the list.", [LSIAgent countCompromisedAgents: lsiAgentsArray]);
        NSLog(@"There are %d clean agents in the list.", [LSIAgent countCleanAgents: lsiAgentsArray]);
    }
    return 0;
}
