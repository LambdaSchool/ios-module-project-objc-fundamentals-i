//
//  main.m
//  NOCListObjC
//
//  Created by Cora Jacobson on 11/11/20.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        LSIAgent *ethan = [[LSIAgent alloc] initWithCoverName:@"Ethan Hunt"
                                                     realName:@"Tom Cruise"
                                                  accessLevel:8
                                                  compromised:NO];
        LSIAgent *jim = [[LSIAgent alloc] initWithCoverName:@"Jim Phelps"
                                                   realName:@"Jon Voight"
                                                accessLevel:9
                                                compromised:YES];
        LSIAgent *claire = [[LSIAgent alloc] initWithCoverName:@"Claire Phelps"
                                                   realName:@"Emmanuelle Beart"
                                                accessLevel:5
                                                compromised:NO];
        LSIAgent *eugene = [[LSIAgent alloc] initWithCoverName:@"Eugene Kittridge"
                                                   realName:@"Henry Czerny"
                                                accessLevel:10
                                                compromised:YES];
        LSIAgent *franz = [[LSIAgent alloc] initWithCoverName:@"Franz Krieger"
                                                   realName:@"Jean Reno"
                                                accessLevel:4
                                                compromised:NO];
        LSIAgent *luther = [[LSIAgent alloc] initWithCoverName:@"Luther Stickell"
                                                   realName:@"Ving Rhames"
                                                accessLevel:4
                                                compromised:NO];
        LSIAgent *sarah = [[LSIAgent alloc] initWithCoverName:@"Sarah Davies"
                                                   realName:@"Kristin Scott Thomas"
                                                accessLevel:5
                                                compromised:YES];
        LSIAgent *max = [[LSIAgent alloc] initWithCoverName:@"Max RotGrab"
                                                   realName:@"Vanessa Redgrave"
                                                accessLevel:4
                                                compromised:NO];
        LSIAgent *hannah = [[LSIAgent alloc] initWithCoverName:@"Hannah Williams"
                                                   realName:@"Ingeborga Dapkūnaitė"
                                                accessLevel:5
                                                compromised:YES];
        LSIAgent *jack = [[LSIAgent alloc] initWithCoverName:@"Jack Harmon"
                                                   realName:@"Emilio Estevez"
                                                accessLevel:6
                                                compromised:YES];
        LSIAgent *frank = [[LSIAgent alloc] initWithCoverName:@"Frank Barnes"
                                                   realName:@"Dale Dye"
                                                accessLevel:9
                                                compromised:NO];
        
        NSArray *agents = @[ethan, jim, claire, eugene, franz, luther, sarah, max, hannah, jack, frank];
        
        int countCompromised = 0;
        for (LSIAgent *agent in agents) {
            if ([agent.compromised isEqual:@1]) {
                countCompromised += 1;
            }
        }
        NSLog(@"Compromised agents: %d", countCompromised);
        
        int countClean = 0;
        for (LSIAgent *agent in agents) {
            if ([agent.compromised isEqual:@0]) {
                countClean += 1;
                NSLog(@"Agent is clean: %@", agent.coverName);
            }
        }
        NSLog(@"Clean agents: %d", countClean);
        
        NSString *warning = @"**WARNING** **COMPROMISED**";
        for (LSIAgent *agent in agents) {
            if ([agent.accessLevel isGreaterThan:@7]) {
                if ([agent.compromised isEqual:@1]) {
                    NSLog(@"%@, level: %@ %@", agent.realName, agent.accessLevel, warning);
                } else {
                    NSLog(@"%@, level: %@", agent.realName, agent.accessLevel);
                }
            }
        }
        
        int lowLevelCount = 0;
        int midLevelCount = 0;
        int highLevelCount = 0;
        for (LSIAgent *agent in agents) {
            switch ([agent.accessLevel intValue]) {
                case 1 ... 4:
                    lowLevelCount += 1;
                    break;
                case 5 ... 7:
                    midLevelCount += 1;
                    break;
                case 8 ... 10:
                    highLevelCount += 1;
            }
        }
        NSLog(@"%d low level agents, %d mid level agents, and %d high level agents", lowLevelCount, midLevelCount, highLevelCount);
        
    }
    return 0;
}
