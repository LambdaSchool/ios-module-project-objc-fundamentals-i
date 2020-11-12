//
//  main.m
//  NOCList-ObjC
//
//  Created by BrysonSaclausa on 11/10/20.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //initializing agents
        LSIAgent *agent0 = [[LSIAgent alloc] initWithCodeName:@"" realName:@"" accessLevel:8 compromised:NO];
        LSIAgent *agent1 = [[LSIAgent alloc] initWithCodeName:@"Jim Phelps" realName:@"Jon Voight" accessLevel:9 compromised:YES];
        LSIAgent *agent2 = [[LSIAgent alloc] initWithCodeName:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel:5 compromised:NO];
        LSIAgent *agent3 = [[LSIAgent alloc] initWithCodeName:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel:10 compromised:YES];
        LSIAgent *agent4 = [[LSIAgent alloc] initWithCodeName:@"EFranz Krieger" realName:@"Jean Reno" accessLevel:4 compromised:NO];
        LSIAgent *agent5 = [[LSIAgent alloc] initWithCodeName:@"Luther Stickell" realName:@"Ving Rhames" accessLevel:4 compromised:NO];
        LSIAgent *agent6 = [[LSIAgent alloc] initWithCodeName:@"Sarah Davies" realName:@"Kristin Scott Thomas" accessLevel:5 compromised:YES];
        LSIAgent *agent7 = [[LSIAgent alloc] initWithCodeName:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel:4 compromised:NO];
        LSIAgent *agent8 = [[LSIAgent alloc] initWithCodeName:@"Hannah Williams" realName:@"Ingeborga Dapkūnaitė" accessLevel:5 compromised:YES];
        LSIAgent *agent9 = [[LSIAgent alloc] initWithCodeName:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel:6 compromised:YES];
        LSIAgent *agent10 = [[LSIAgent alloc] initWithCodeName:@"Frank Barnes" realName:@"Dale Dye" accessLevel:9 compromised:NO];
        
        //putting agents into an array
        NSArray *agentArray = @[ agent0,
                                 agent1,
                                 agent2,
                                 agent3,
                                 agent4,
                                 agent5,
                                 agent6,
                                 agent7,
                                 agent8,
                                 agent9,
                                 agent10
        ];
        
        
        
        
    }
    
    return 0;
}
