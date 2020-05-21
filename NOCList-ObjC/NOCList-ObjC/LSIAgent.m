//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Jessie Ann Griffin on 5/20/20.
//  Copyright © 2020 Jessie Griffin. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype)initWithCover:(NSString *)coverName
                      andName:(NSString *)realName
                     andLevel:(int)accessLevel
                    andStatus:(BOOL)compromised
{
    if (self = [super init]) {
        self.coverName = coverName;
        self.realName = realName;
        self.accessLevel = [NSNumber numberWithInt:accessLevel];
        self.compromised = [NSNumber numberWithBool:compromised];
    }
    return self;
}

+ (int)countCompromisedAgents: (NSArray *)lsiAgents
{
    int compromisedAgents;
    compromisedAgents = 0;

    for(LSIAgent *agent in lsiAgents) {
        if ([agent.compromised isEqualToNumber:[NSNumber numberWithBool:1]]) {
            compromisedAgents += 1;
        }
    }
    return compromisedAgents;
}

+ (int)countCleanAgents: (NSArray *)lsiAgents
{
    int cleanAgents;
    cleanAgents = 0;

    for(LSIAgent *agent in lsiAgents) {
        if ([agent.compromised isEqualToNumber:[NSNumber numberWithBool:0]]) {
            cleanAgents += 1;
            NSLog(@"Agent is clean: %@", agent.coverName);
        }
    }
    return cleanAgents;
}

+ (void)findHighRiskAgents: (NSArray *)lsiAgents
{
    for(LSIAgent *agent in lsiAgents) {
        if ([agent.accessLevel isGreaterThanOrEqualTo:[NSNumber numberWithInt:8]]) {
            NSLog(@"%@, level: %@", agent.realName, agent.accessLevel);
            if ([agent.compromised isEqualToNumber:[NSNumber numberWithBool:1]]) {
                // TODO: Make these print on the same line
                NSLog(@"**WARNING** **COMPROMISED**");
            }
        }
    }
}

+ (void)findTotalsByAcessLevel: (NSArray *)lsiAgents
{
    int highLevelAgents = 0;
    int midLevelAgents = 0;
    int lowLevelAgents = 0;

    for(LSIAgent *agent in lsiAgents) {
        if ([agent.accessLevel isGreaterThanOrEqualTo:[NSNumber numberWithInt:8]]) {
            highLevelAgents += 1;
        } else if ([agent.accessLevel isGreaterThan:[NSNumber numberWithInt:4]] &&
                   [agent.accessLevel isLessThan:[NSNumber numberWithInt:8]]) {
            midLevelAgents += 1;
        } else {
            lowLevelAgents += 1;
        }
    }
    printf("%d low level agents, %d mid level agents, and %d high level agents.\n",
           lowLevelAgents, midLevelAgents, highLevelAgents);
}

+ (void)groupAgentsByAccessLevel: (NSArray *)lsiAgents
{
    NSSortDescriptor *sortByAccessLevel = [[NSSortDescriptor alloc] initWithKey:@"accessLevel" ascending:YES];
    NSArray *sortDescriptors = [NSArray arrayWithObjects:sortByAccessLevel, nil];
    NSArray *agentsSortedByAccessLevel = [lsiAgents sortedArrayUsingDescriptors:sortDescriptors];

    for(LSIAgent *agent in agentsSortedByAccessLevel) {
        NSLog(@"%@, level: %@", agent.coverName, agent.accessLevel);
    }
}

@end
