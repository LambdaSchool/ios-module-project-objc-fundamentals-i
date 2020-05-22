//
//  LSIAgent.h
//  Noc List
//
//  Created by Alex Thompson on 5/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

typedef struct AgentCounts
{
    int lowLevel;
    int midLevel;
    int highLevel;
}AgentCounts;

@property NSString *coverName;
@property NSString *realName;
@property NSNumber *accessLevel;
@property NSNumber *isCompromised;

-(instancetype)initAgentWithCoverName:(NSString *)coverName
                             realName:(NSString *)realName
                            accessLevel:(int)accessLevel
                         isCompromised:(BOOL)isCompromised;

+(int)numberOfCompromisedAgentsInArray:(NSArray *)agents;

+(int)numberOfCleanAgentsInArray:(NSArray *)agents;

+(void)printHighRiskAgentsInArray:(NSArray *)agents;

+(AgentCounts)countLowMidHighRiskAgentsInArray:(NSArray *)agents;

@end

NS_ASSUME_NONNULL_END
