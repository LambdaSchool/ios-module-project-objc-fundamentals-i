//
//  main.m
//  NOCList-ObjC
//
//  Created by John McCants on 11/15/20.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        LSIAgent *agentOne = [[LSIAgent alloc]
                              initWithName:@"Tom Cruise" compromised: false coverName:@"Ethan Hunt" accessLevel:8];
        LSIAgent *agentTwo = [[LSIAgent alloc]initWithName:@"Jon Voight" compromised:true coverName:@"Jim Phelps" accessLevel:9];
        LSIAgent *agentThree = [[LSIAgent alloc]initWithName:@"Emmanuelle Beart" compromised:false coverName:@"Claire Phelps" accessLevel:5];
        LSIAgent *agentFour = [[LSIAgent alloc]
                              initWithName:@"Henry Czerny" compromised: true coverName:@"Eugene Kittridge" accessLevel:10];
        LSIAgent *agentFive = [[LSIAgent alloc]initWithName:@"Jean Reno" compromised:false coverName:@"Franz Krieger" accessLevel:4];
        LSIAgent *agentSix = [[LSIAgent alloc]initWithName:@"Ving Rhames" compromised:false coverName:@"Luther Stickell" accessLevel:4];
        LSIAgent *agentSeven = [[LSIAgent alloc]
                              initWithName:@"Kristin Scott Thomas" compromised: true coverName:@"Sara Davies" accessLevel:5];
        LSIAgent *agentEight = [[LSIAgent alloc]initWithName:@"Vanessa Redgrave" compromised:false coverName:@"Max RotGrab" accessLevel:4];
        LSIAgent *agentNine = [[LSIAgent alloc]initWithName:@"Ingeborga Dapkunaite" compromised:true coverName:@"Hannah Williams" accessLevel:5];
        LSIAgent *agentTen = [[LSIAgent alloc]initWithName:@"Emilio Estevez" compromised:true coverName:@"Jack Harmon" accessLevel:6];
        LSIAgent *agentEleven = [[LSIAgent alloc]initWithName:@"Dale Dye" compromised:false coverName:@"Frank Barnes" accessLevel:9];
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSMutableArray *agents = [NSMutableArray new];
        [agents addObject:agentOne];
        [agents addObject:agentTwo];
        [agents addObject:agentThree];
        [agents addObject:agentFour];
        [agents addObject:agentFive];
        [agents addObject:agentSix];
        [agents addObject:agentSeven];
        [agents addObject:agentEight];
        [agents addObject:agentNine];
        [agents addObject:agentTen];
        [agents addObject:agentEleven];
        
        [agentOne sortCleanAgents:agents];
        [agentTwo sortHighRiskAgents:agents];
        [agentThree sortCompromisedAgents:agents];
        [agentFour sortLevels:agents];
    }
    return 0;
}
