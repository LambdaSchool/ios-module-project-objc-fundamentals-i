//
//  main.m
//  NOCList-ObjC
//
//  Created by Bronson Mullens on 9/16/20.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        LSIAgent *agent1 = [[LSIAgent alloc] init:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:8 compromised:NO];
        LSIAgent *agent2 = [[LSIAgent alloc] init:@"Jim Phelps" realName:@"John Voight" accessLevel:8 compromised:YES];
        LSIAgent *agent3 = [[LSIAgent alloc] init:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel:5 compromised:NO];
        LSIAgent *agent4 = [[LSIAgent alloc] init:@"Eugene kittridge" realName:@"Bill" accessLevel:10 compromised:YES];
        LSIAgent *agent5 = [[LSIAgent alloc] init:@"Franz Krieger" realName:@"Jean Reno" accessLevel:4 compromised:NO];
        LSIAgent *agent6 = [[LSIAgent alloc] init:@"Luther Stickell" realName:@"Ving Rhames" accessLevel:4 compromised:NO];
        LSIAgent *agent7 = [[LSIAgent alloc] init:@"Sarah Davies" realName:@"Kristin Scott Thomas" accessLevel:5 compromised:YES];
        LSIAgent *agent8 = [[LSIAgent alloc] init:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel:4 compromised:NO];
        LSIAgent *agent9 = [[LSIAgent alloc] init:@"Hannah Williams" realName:@"Ingeborga Dapkūnaitė" accessLevel:5 compromised:YES];
        LSIAgent *agent10 = [[LSIAgent alloc] init:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel:6 compromised:YES];
        LSIAgent *agent11 = [[LSIAgent alloc] init:@"Frank Barnes" realName:@"Dale Dyle" accessLevel:9 compromised:NO];
        
        NSArray *agents = @[
            agent1,
            agent2,
            agent3,
            agent4,
            agent5,
            agent6,
            agent7,
            agent8,
            agent9,
            agent10,
            agent11];
        
        // Calculates # of compromised agents and logs the value
        int compromisedAgents = 0;
        for(LSIAgent *agent in agents) {
            if ([agent compromised] == [NSNumber numberWithBool:YES]) {
                compromisedAgents += 1;
            }
        }
        switch (compromisedAgents) {
            case 0:
                NSLog(@"No agents are compromised!");
                break;
            case 1:
                NSLog(@"One agent is compromised.");
                break;
            case 2 ... 100:
                NSLog(@"%i agents are compromised.", compromisedAgents);
                break;
            default:
                NSLog(@"A lot of agents are compromised!");
                break;
        }
        
        // Calculates # of clean agents and logs the value
        int cleanAgents = 0;
        for(LSIAgent *agent in agents) {
            if ([agent compromised] == [NSNumber numberWithBool:NO]) {
                cleanAgents += 1;
            }
            if ([agent compromised] == [NSNumber numberWithBool:NO]) {
                NSLog(@"%@ is clean.", agent.coverName);
            }
        }
        switch (cleanAgents) {
            case 0:
                NSLog(@"No agents are clean!");
                break;
            case 1:
                NSLog(@"One agent is clean.");
                break;
            case 2 ... 100:
                NSLog(@"%i agents are clean.", cleanAgents);
                break;
            default:
                NSLog(@"A lot of agents are clean!");
                break;
        }
        
    }
    return 0;
}
