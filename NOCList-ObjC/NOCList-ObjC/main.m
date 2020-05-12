//
//  main.m
//  NOCList-ObjC
//
//  Created by Wyatt Harrell on 5/11/20.
//  Copyright © 2020 Wyatt Harrell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        LSIAgent *agent1 = [[LSIAgent alloc] initWithCoverName:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:8 compromised:NO];
        LSIAgent *agent2 = [[LSIAgent alloc] initWithCoverName:@"Jim Phelps" realName:@"Jon Voight" accessLevel:9 compromised:YES];
        LSIAgent *agent3 = [[LSIAgent alloc] initWithCoverName:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel:5 compromised:NO];
        LSIAgent *agent4 = [[LSIAgent alloc] initWithCoverName:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel:10 compromised:YES];
        LSIAgent *agent5 = [[LSIAgent alloc] initWithCoverName:@"Franz Krieger" realName:@"Jean Reno" accessLevel:4 compromised:NO];
        LSIAgent *agent6 = [[LSIAgent alloc] initWithCoverName:@"Luther Stickell" realName:@"Ving Rhames" accessLevel:4 compromised:NO];
        LSIAgent *agent7 = [[LSIAgent alloc] initWithCoverName:@"Sarah Davies" realName:@"Kristin Scott Thomas" accessLevel:5 compromised:YES];
        LSIAgent *agent8 = [[LSIAgent alloc] initWithCoverName:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel:4 compromised:NO];
        LSIAgent *agent9 = [[LSIAgent alloc] initWithCoverName:@"Hannah Williams" realName:@"Ingeborga Dapkūnaitė" accessLevel:5 compromised:YES];
        LSIAgent *agent10 = [[LSIAgent alloc] initWithCoverName:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel:6 compromised:YES];
        LSIAgent *agent11 = [[LSIAgent alloc] initWithCoverName:@"Frank Barnes" realName:@"Dale Dye" accessLevel:9 compromised:NO];
        
        NSArray *agents = @[agent1, agent2, agent3, agent4, agent5, agent6, agent7, agent8, agent9, agent10, agent11];
        
        // Part 3
        int numberOfCompromised = 0;
        for (LSIAgent *object in agents) {
          if ([[object compromised] isEqual:@YES]) {
              numberOfCompromised++;
          }
        }
        NSLog(@"Number of compromised agents: %d", numberOfCompromised);
        
        
        // Part 4
        int numberOfCleanAgents = 0;
        for (LSIAgent *object in agents) {
          if ([[object compromised] isEqual:@NO]) {
              NSLog(@"Agent is clean: %@", object.coverName);
              numberOfCleanAgents++;
          }
        }
        NSLog(@"Number of clean agents: %d", numberOfCleanAgents);

        
        // Part 5
        for (LSIAgent *object in agents) {
          if ([[object accessLevel] isGreaterThanOrEqualTo:@8]) {
              
              if ([[object compromised] isEqual:@NO]) {
                  NSLog(@"%@, level %@", object.realName, object.accessLevel);
              } else {
                  NSLog(@"%@, level %@ **WARNING** **COMPROMISED**", object.realName, object.accessLevel);
              }
              
          }
        }
        
        
        // Part 6
        int numberOfLow = 0;
        int numberOfMid = 0;
        int numberOfHigh = 0;
        for (LSIAgent *object in agents) {
          if ([[object accessLevel] isLessThanOrEqualTo:@4]) {
              numberOfLow++;
          } else if ([[object accessLevel] isGreaterThanOrEqualTo:@5] && [[object accessLevel] isLessThanOrEqualTo:@7]) {
              numberOfMid++;
          } else if ([[object accessLevel] isGreaterThanOrEqualTo:@8]) {
              numberOfHigh++;
          }
        }
        NSLog(@"%d low level agents, %d mid level agents, and %d high level agents", numberOfLow, numberOfMid, numberOfHigh);
        
        
        // Part 7
        NSSortDescriptor *sortDescriptor;
        sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"accessLevel"
                                                   ascending:YES];
        NSArray *sortedArray = [agents sortedArrayUsingDescriptors:@[sortDescriptor]];
        for (LSIAgent * object in sortedArray) {
            NSLog(@"%@, Access level: %@", object.coverName, object.accessLevel);
        }

        
    }
    return 0;
}
