//
//  main.m
//  NOCList-ObjC
//
//  Created by Sal B Amer on 5/20/20.
//  Copyright © 2020 Sal B Amer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"


/*
coverName: "Ethan Hunt", realName: "Tom Cruise", accessLevel: 8, compromised: false
coverName: "Jim Phelps", realName: "Jon Voight", accessLevel: 9, compromised: true
coverName: "Claire Phelps", realName: "Emmanuelle Beart", accessLevel: 5, compromised: false
coverName: "Eugene Kittridge", realName: "Henry Czerny", accessLevel: 10, compromised: true
coverName: "Franz Krieger", realName: "Jean Reno", accessLevel: 4, compromised: false
coverName: "Luther Stickell", realName: "Ving Rhames", accessLevel: 4, compromised: false
coverName: "Sarah Davies", realName: "Kristin Scott Thomas", accessLevel: 5, compromised: true
coverName: "Max RotGrab", realName: "Vanessa Redgrave", accessLevel: 4, compromised: false
coverName: "Hannah Williams", realName: "Ingeborga Dapkūnaitė", accessLevel: 5, compromised: true
coverName: "Jack Harmon", realName: "Emilio Estevez", accessLevel: 6, compromised: true
coverName: "Frank Barnes", realName: "Dale Dye", accessLevel: 9, compromised: false

*/

//Use the custom init method in main.m to create agent objects for each record above.
//Once created, declare an NSArray variable and place all agent objects within it.




int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    LSIAgent * ethan = [[LSIAgent alloc] initWithagentsName:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:8 compromised:NO];
    LSIAgent * jim = [[LSIAgent alloc] initWithagentsName:@"Jim Phelps" realName:@"Jon Voight" accessLevel:9 compromised:YES];
    LSIAgent * claire = [[LSIAgent alloc] initWithagentsName:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel:5 compromised:NO];
    LSIAgent * eugene = [[LSIAgent alloc] initWithagentsName:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel:10 compromised:YES];
    LSIAgent * franz = [[LSIAgent alloc] initWithagentsName:@"Franz Krieger" realName:@"Jean Reno" accessLevel:4 compromised:NO];
    LSIAgent * luther = [[LSIAgent alloc] initWithagentsName:@"Luther Stickell" realName:@"Ving Rhames" accessLevel:4 compromised:NO];
    LSIAgent * sarah = [[LSIAgent alloc] initWithagentsName:@"Sarah Davies" realName:@"Kristin Scott Thomas" accessLevel:5 compromised:YES];
    LSIAgent * max = [[LSIAgent alloc] initWithagentsName:@"Max RotGab" realName:@"Vanessa Redgrave" accessLevel:4 compromised:NO];
    LSIAgent * hannah = [[LSIAgent alloc] initWithagentsName:@"Hannah Williams" realName:@"Ingeboge Dapkūnaitė" accessLevel:5 compromised:YES];
    LSIAgent * jack = [[LSIAgent alloc] initWithagentsName:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel:6 compromised:YES];
    LSIAgent * frank = [[LSIAgent alloc] initWithagentsName:@"Frank Barnes" realName:@"Dale Dye" accessLevel:9 compromised:NO];
    
    NSMutableArray * agents = [[NSMutableArray alloc] initWithObjects:ethan, jim, claire, eugene, franz, luther, sarah, max, hannah, jack, frank, nil];
    
    
    //    // for in loop
    //      for (NSString *name in shipCaptains) {
    //          NSLog(@"%@", name);
    //      }
    
    int compromisedAgents = 0;
    int cleanAgents = 0;
    int lowLevelAgents = 0;
    int midLevelAgents = 0;
    int highLevelAgents = 0;
    
    //Create a for loop to iterate over each agent and determine the total amount of compromised agents (can use a traditional for loop or a for-in fast enumeration).
    for (LSIAgent * agent in agents) {
      if (agent.compromised.boolValue == YES) {
        compromisedAgents++;
        NSLog(@"Agent is Compromised: %@", agent.coverName);
        
        //Print a message revealing the total number of compromised agents.
        NSLog(@"Total number of Compromised Agents Is: %d", compromisedAgents);
      }
    }
    
//    Create a for loop to iterate over each agent and determine the total amount of clean agents. Additionally, if the agent is clean, print a console message saying "Agent is clean: [agent's cover name]."
    for (LSIAgent * agent in agents) {
      if (agent.compromised.boolValue == NO) {
        cleanAgents++;
        NSLog(@"Agent is Clean: %@", agent.coverName);
        
        //    Print a message revealing the total number of clean agents.
        NSLog(@"Total number of Clean Agents is: %d", cleanAgents);
      }
    }
    
    
//    Create a loop that finds high risk agents. It should print out the real names and access levels of agents with level 8 or higher. If that agent is also currently compromised, add WARNING COMPROMISED to the end of the string that includes their name and access level.
//    Jon Voight, level: 9 **WARNING** **COMPROMISED**
    
    for (LSIAgent * agent in agents) {
      
      int agentAccessLevel = agent.accessLevel.intValue;
      BOOL agentIsCompromised = agent.compromised.boolValue;
      NSString * realName = agent.realName;
      
      if (agentAccessLevel > 8 && agentIsCompromised == YES) {
        NSLog(@"%@, level: %d **WARNING** **COMPROMISED**", realName, agentAccessLevel);
      } else if (agentAccessLevel > 8) {
        NSLog(@"%@, level: %d", realName, agentAccessLevel);
      }
    }


    
  }
  return 0;
}
