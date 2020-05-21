//
//  LSIAgent.h
//  NOCList-ObjC
//
//  Created by Jessie Ann Griffin on 5/20/20.
//  Copyright © 2020 Jessie Griffin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

@property (nonatomic) NSString *coverName;
@property (nonatomic) NSString *realName;
@property (nonatomic) NSNumber *accessLevel;
@property (nonatomic) NSNumber *compromised;

- (instancetype)initWithCover:(NSString *)coverName
                      andName:(NSString *)realName
                     andLevel:(int)accessLevel
                    andStatus:(BOOL)compromised;

+ (int)countCompromisedAgents: (NSArray *)lsiAgents;
+ (int)countCleanAgents: (NSArray *)lsiAgents;
+ (void)findHighRiskAgents: (NSArray *)lsiAgents;
+ (void)findTotalsByAcessLevel: (NSArray *)lsiAgents;
+ (void)groupAgentsByAccessLevel: (NSArray *)lsiAgents;

@end

NS_ASSUME_NONNULL_END
