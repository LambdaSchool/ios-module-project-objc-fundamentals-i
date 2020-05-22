//
//  main.m
//  NOCList-ObjC
//
//  Created by denis cedeno on 5/21/20.
//  Copyright © 2020 DenCedeno Co. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        LSIAgent *agent1 = [[LSIAgent alloc]initAgentCoverName:@"Ethan Hunt" initAgentRealName:@"Tom Cruise" initAccessLevel:8 initCompromised:0];
    
        LSIAgent *agent2 = [[LSIAgent alloc]initAgentCoverName:@"Jim Phelps" initAgentRealName:@"Jon Voight" initAccessLevel:9 initCompromised:1];
    
        LSIAgent *agent3 = [[LSIAgent alloc]initAgentCoverName:@"Claire Phelps" initAgentRealName:@"Emmanuelle Beart" initAccessLevel:5 initCompromised:0];
    
        LSIAgent *agent4 = [[LSIAgent alloc]initAgentCoverName:@"Eugene Kittridge" initAgentRealName:@"Henry Czerny" initAccessLevel:10 initCompromised:1];
  
        LSIAgent *agent5 = [[LSIAgent alloc]initAgentCoverName:@"Franz Krieger" initAgentRealName:@"Jean Reno" initAccessLevel:4 initCompromised:0];
        
        LSIAgent *agent6 = [[LSIAgent alloc]initAgentCoverName:@"Luther Stickell" initAgentRealName:@"Ving Rhames" initAccessLevel:4 initCompromised:0];
        
        LSIAgent *agent7 = [[LSIAgent alloc]initAgentCoverName:@"Sarah Davies" initAgentRealName:@"Kristin Scott Thomas" initAccessLevel:5 initCompromised:1];

        LSIAgent *agent8 = [[LSIAgent alloc]initAgentCoverName:@"Max RotGrab" initAgentRealName:@"Vanessa Redgrave" initAccessLevel:4 initCompromised:0];
      
        LSIAgent *agent9 = [[LSIAgent alloc]initAgentCoverName:@"Hannah Williams" initAgentRealName:@"Ingeborga Dapkūnaitė" initAccessLevel:5 initCompromised:1];
        
        LSIAgent *agent10 = [[LSIAgent alloc]initAgentCoverName:@"Jack Harmon" initAgentRealName:@"Emilio Estevez" initAccessLevel:6 initCompromised:1];
        
        LSIAgent *agent11 = [[LSIAgent alloc]initAgentCoverName:@"Frank Barnes" initAgentRealName:@"Dale Dye" initAccessLevel:9 initCompromised:0];
        
        NSArray *agentArray = [NSArray arrayWithObjects:agent1, agent2, agent3, agent4, agent5, agent6, agent7, agent8, agent9, agent10, agent11, nil];
        
        LSIAgent *agents = [[LSIAgent alloc]init];
        [agents compromisedAgentCount:agentArray];
        [agents agentIsClean:agentArray];
        
    }
    return 0;
}
