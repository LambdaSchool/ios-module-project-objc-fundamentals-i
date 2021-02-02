//
//  main.m
//  NOCListObjc
//
//  Created by Kenneth Jones on 2/1/21.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Step 2
        LSIAgent *eHunt = [[LSIAgent alloc] initWithCoverName:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:8 compromised:NO];
        LSIAgent *jPhelps = [[LSIAgent alloc] initWithCoverName:@"Jim Phelps" realName:@"Jon Voight" accessLevel:9 compromised:YES];
        LSIAgent *cPhelps = [[LSIAgent alloc] initWithCoverName:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel:5 compromised:NO];
        LSIAgent *eKittridge = [[LSIAgent alloc] initWithCoverName:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel:10 compromised:YES];
        LSIAgent *fKrieger = [[LSIAgent alloc] initWithCoverName:@"Franz Krieger" realName:@"Jean Reno" accessLevel:4 compromised:NO];
        LSIAgent *lStickell = [[LSIAgent alloc] initWithCoverName:@"Luther Stickell" realName:@"Ving Rhames" accessLevel:4 compromised:NO];
        LSIAgent *sDavies = [[LSIAgent alloc] initWithCoverName:@"Sarah Davies" realName:@"Kristin Scott Thomas" accessLevel:5 compromised:YES];
        LSIAgent *mRotGrab = [[LSIAgent alloc] initWithCoverName:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel:4 compromised:NO];
        LSIAgent *hWilliams = [[LSIAgent alloc] initWithCoverName:@"Hannah Williams" realName:@"Ingeborga Dapkūnaitė" accessLevel:5 compromised:YES];
        LSIAgent *jHarmon = [[LSIAgent alloc] initWithCoverName:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel:6 compromised:YES];
        LSIAgent *fBarnes = [[LSIAgent alloc] initWithCoverName:@"Frank Barnes" realName:@"Dale Dye" accessLevel:9 compromised:NO];
        
        NSArray *agents = @[eHunt, jPhelps, cPhelps, eKittridge, fKrieger, lStickell, sDavies, mRotGrab, hWilliams, jHarmon, fBarnes];
        
        // Step 3
        int compromisedAgents = 0;
        
        for (LSIAgent *agent in agents) {
            if (agent.compromised.boolValue) {
                compromisedAgents++;
            }
        }
        
        NSLog(@"%i agents have been compromised!", compromisedAgents);
        
        // Step 4
        int cleanAgents = 0;
        
        for (LSIAgent *agent in agents) {
            if (!agent.compromised.boolValue) {
                NSLog(@"Agent is clean: %@", agent.coverName);
                cleanAgents++;
            }
        }
        
        NSLog(@"%i agents are clean!", cleanAgents);
        
        // Step 5
        for (LSIAgent *agent in agents) {
            if (agent.accessLevel.intValue >= 8) {
                if (agent.compromised.boolValue) {
                    NSLog(@"%@, level: %i **WARNING** **COMPROMISED**", agent.realName, agent.accessLevel.intValue);
                } else {
                    NSLog(@"%@, level: %i", agent.realName, agent.accessLevel.intValue);
                }
            }
        }
        
        // Step 6
        int lowLevelAgents = 0;
        int midLevelAgents = 0;
        int highLevelAgents = 0;
        
        for (LSIAgent *agent in agents) {
            if (agent.accessLevel.intValue <= 4) {
                lowLevelAgents++;
            } else if (agent.accessLevel.intValue >= 5 && agent.accessLevel.intValue <= 7) {
                midLevelAgents++;
            } else {
                highLevelAgents++;
            }
        }
        
        NSLog(@"%i low level agents, %i mid level agents, and %i high level agents", lowLevelAgents, midLevelAgents, highLevelAgents);
        
        // Step 7 - Bonus!
        for (int i = 0; i <= 10; i++) {
            for (LSIAgent *agent in agents) {
                if (agent.accessLevel.intValue == i) {
                    NSLog(@"%@: Level %i", agent.coverName, agent.accessLevel.intValue);
                }
            }
        }
    }
    return 0;
}
