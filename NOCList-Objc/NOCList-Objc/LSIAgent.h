//
//  LSIAgent.h
//  NOCList-Objc
//
//  Created by Kelson Hartle on 7/13/20.
//  Copyright © 2020 Kelson Hartle. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject


@property NSString *coverName;
@property NSString *realName;
@property NSNumber *accessLevel;
@property NSNumber *compromised;

- (instancetype)initWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)compromised;

-(void)discoverWhoIsCompromised:(NSArray *)secretAgents;

-(void)findCleanAgents:(NSArray *)secretAgents;

-(void)determineHighRiskAgents:(NSArray *)secretAgents;



@end

NS_ASSUME_NONNULL_END
