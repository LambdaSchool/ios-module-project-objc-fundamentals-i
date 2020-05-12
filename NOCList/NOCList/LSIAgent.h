//
//  LSIAgent.h
//  NOCList
//
//  Created by Shawn Gee on 5/11/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

typedef struct AgentCounts {
  int lowLevel;
  int midLevel;
  int highLevel;
} AgentCounts;

@property NSString *coverName;
@property NSString *realName;
@property NSNumber *accessLevel;
@property NSNumber *isCompromised;

-(instancetype)initAgentWithCoverName:(NSString *)coverName
                             realName:(NSString *)realName
                          accessLevel:(int)accessLevel
                        isCompromised:(BOOL)isCompromised;

/// Counts the total number of compromised agents, which is returned as an int.
/// @param agents The array of LSIAgents to tally.
+(int)numberOfCompromisedAgentsInArray:(NSArray *)agents;

/// Counts the total number of clean agents, which is returned as an int,
/// as well as printing out each clean agent found.
/// @param agents The array of LSIAgents to tally.
+(int)numberOfCleanAgentsInArray:(NSArray *)agents;

/// Prints all high risk agents, appending a warning for those that are compromised.
/// @param agents The array of LSIAgents to print.
+(void)printHighRiskAgentsInArray:(NSArray *)agents;

/// Counts the total of low, mid, and high risk agents, returning them in an AgentCounts struct.
/// @param agents The array of LSIAgents to tally.
+(AgentCounts)countLowMidHighRiskAgentsInArray:(NSArray *)agents;

/// Prints agent cover names and access levels sorted by access level ascending, and then cover name ascending.
/// @param agents The array of LSIAgents to print.
+(void)printSortedAgentsWithArray:(NSArray *)agents;

@end

NS_ASSUME_NONNULL_END
