//
//  main.m
//  NOCList-ObjC
//
//  Created by Stephanie Ballard on 7/13/20.
//  Copyright © 2020 Stephanie Ballard. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        LSIAgent *agent1 = [[LSIAgent alloc] initWithCoverName:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:8 compromised:false];
        LSIAgent *agent2 = [[LSIAgent alloc] initWithCoverName:@"Jim Phelps" realName:@"Jon Voight" accessLevel:9 compromised:true];
        LSIAgent *agent3 = [[LSIAgent alloc] initWithCoverName:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel:5 compromised:false];
        LSIAgent *agent4 = [[LSIAgent alloc] initWithCoverName:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel:10 compromised:true];
        LSIAgent *agent5 = [[LSIAgent alloc] initWithCoverName:@"Franz Krieger" realName:@"Jean Reno" accessLevel:4 compromised:false];
        LSIAgent *agent6 = [[LSIAgent alloc] initWithCoverName:@"Luther Stickell" realName:@"Ving Rhames" accessLevel:4 compromised:false];
        LSIAgent *agent7 = [[LSIAgent alloc] initWithCoverName:@"Sarah Davies" realName:@"Kristin Scott Thomas" accessLevel:5 compromised:true];
        LSIAgent *agent8 = [[LSIAgent alloc] initWithCoverName:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel:4 compromised:false];
        LSIAgent *agent9 = [[LSIAgent alloc] initWithCoverName:@"Hannah Williams" realName:@"Ingeborga Dapkūnaitė" accessLevel:5 compromised:true];
        LSIAgent *agent10 = [[LSIAgent alloc] initWithCoverName:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel:6 compromised:true];
        LSIAgent *agent11 = [[LSIAgent alloc] initWithCoverName:@"Frank Barnes" realName:@"Dale Dye" accessLevel:9 compromised:false];
        
        NSMutableArray<LSIAgent *> *mutableAgents = [[NSMutableArray alloc] initWithObjects: agent1, agent2, agent3, agent4, agent5, agent6, agent7, agent8, agent9, agent10, agent11, nil];
        NSLog(@"%@", mutableAgents);
        
        // var compromisedAgents = 0
        // for agent in agents {
        // if agent.compromised == true {
        // compromisedAgents += 1
        //  }
        // }
        // print("There are \(compromisedAgents) compromisedAgents")
        
        // Step 3
        int compromisedAgents = 0;
        for (LSIAgent *agent in mutableAgents) {
            if(agent.compromised.boolValue) {
                compromisedAgents += 1;
            }
        }
        
        NSLog(@"There are %i compromised agents.", compromisedAgents);
        
        // Step 4
        int cleanAgents = 0;
        for (LSIAgent *agent in mutableAgents) {
            if (!agent.compromised.boolValue) {
                cleanAgents += 1;
                NSLog(@"%@ is clean.", agent.coverName);
            }
        }
        
        NSLog(@"There are %i clean agents.", cleanAgents);
        
        //        Create a loop that finds high risk agents.
        //        It should print out the real names and access levels of agents with level 8 or higher.
        //        If that agent is also currently compromised, add WARNING COMPROMISED to the end of the string that includes their name and access level.
        
        // Step 5
        for (LSIAgent *agent in mutableAgents) {
            if (agent.accessLevel.intValue >= 8 && agent.compromised.boolValue) {
                NSLog(@"%@, level: %i **WARNING** **COMPROMISED**", agent.realName, agent.accessLevel.intValue);
            } else if (agent.accessLevel.intValue >= 8 && !agent.compromised.boolValue) {
                NSLog(@"%@ has an access level of 8 or higher.", agent.realName);
            }
        }
        /*
        Create a loop that finds totals for low, mid, and high level agents.
        Low level agents are 4 or lower, mid are 5-7, and
        high level agents are 8 or above.
        After the loop, print a statement with the number of agents based on their level.
        As an example, if we have a total of 9 agents, the print statement might look like this:
        2 low level agents, 3 mid level agents, and 4 high level agents
        */
        
        // Step 6
        int lowLevelAgents = 0;
        int midLevelAgents = 0;
        int highLevelAgents = 0;
        
        for (LSIAgent *agent in mutableAgents) {
            if (agent.accessLevel.intValue >= 8) {
                highLevelAgents += 1;
            } else if (agent.accessLevel.intValue >= 5 && agent.accessLevel.intValue <= 7) {
                midLevelAgents += 1;
            } else {
                lowLevelAgents += 1;
            }
        }
        
        NSLog(@"Our agency has %i high level agents, %i mid evel agents, and %i low level agents.", highLevelAgents, midLevelAgents, lowLevelAgents);
    }
    
    return 0;
}
