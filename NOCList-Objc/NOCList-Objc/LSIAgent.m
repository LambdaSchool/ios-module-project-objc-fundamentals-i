//
//  LSIAgent.m
//  NOCList-Objc
//
//  Created by Kelson Hartle on 7/13/20.
//  Copyright © 2020 Kelson Hartle. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent


- (instancetype)initWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)compromised;
{
    self = [super init];
    if (self != nil) {
        
        
        
        _coverName = coverName;
        _realName = realName;
        _accessLevel = [NSNumber numberWithInt: accessLevel];
        _compromised = [NSNumber numberWithBool: compromised];
        
        
    }
    return self;
}

-(void)discoverWhoIsCompromised:(NSArray *)secretAgents
{
    int compromisedAgents = 0;
    NSLog(@"-------------COMP AGENTS--------------");
    
    for (LSIAgent *agent in secretAgents) {
        if (agent.compromised.boolValue) {
            compromisedAgents++;
            
            
        }
    }
    NSLog(@"Number of compromised agents: %d", compromisedAgents);
}

-(void)findCleanAgents:(NSArray *)secretAgents
{
    int cleanAgents = 0;
    for (LSIAgent *agent in secretAgents) {
        if (!agent.compromised.boolValue) {
            cleanAgents++;
        }
    }
    NSLog(@"Number of clean agents %d", cleanAgents);
    
}
-(void)determineHighRiskAgents:(NSArray *)secretAgents
{
//    for (LSIAgent *agent in secretAgents) {
//        NSNumber *highRisk = @8;
//        if (agent.accessLevel >= highRisk ) {
//            NSLog(@"%@ level, %@ **WARNING** **COMPROMISED**", agent.realName, agent.accessLevel);
//        }
//    }
    
    for (LSIAgent *agent in secretAgents) {
        int agentLevel = agent.accessLevel.intValue;
        if (agentLevel >= 8 ) {
            NSLog(@"%@ level, %@ **WARNING** **COMPROMISED**", agent.realName, agent.accessLevel);
        }
    }
    
    int lowRisk = 0;
    int mediumRisk = 0;
    int highRisk = 0;
    
    for (LSIAgent *agent in secretAgents) {
//        NSRange numbers = NSMakeRange(0, 4);
//        NSNumber *lowRiskStart = @0;
//        NSNumber *lowRiskEnd = @4;
//        NSNumber *mediumRiskStart = @5;
//        NSNumber *mediumRiskEnd = @7;
//        NSNumber *highRiskStart = @9;
//
//        if (agent.accessLevel >= lowRiskStart && agent.accessLevel <= lowRiskEnd ) {
//            lowRisk++;
//        } else if (agent.accessLevel >= mediumRiskStart && agent.accessLevel <= mediumRiskEnd ) {
//            mediumRisk++;
//
//        } else if (agent.accessLevel >= highRiskStart){
//            highRisk++;
//        }
        
        int levelDetermined = agent.accessLevel.intValue;
        
        if (levelDetermined >= 8) {
            highRisk++;
        } else if (levelDetermined >= 5){
            mediumRisk++;
        } else {
            lowRisk++;
        }
        
    }
   NSLog(@"Low Risk:  %d, Medium Risk: %d, High Risk: %d", lowRisk, mediumRisk, highRisk);
}



@end
