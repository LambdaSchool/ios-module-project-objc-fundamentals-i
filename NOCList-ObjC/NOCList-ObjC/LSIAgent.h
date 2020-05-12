//
//  LSIAgent.h
//  NOCList-ObjC
//
//  Created by Mark Gerrior on 5/11/20.
//  Copyright © 2020 Mark Gerrior. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

@property NSString *coverName;
@property NSString *realName;
@property NSNumber* accessLevel;
@property NSNumber* compromised;

- (instancetype)initWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)compromised;

@end

NS_ASSUME_NONNULL_END
