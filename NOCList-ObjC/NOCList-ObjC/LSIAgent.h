//
//  LSIAgent.h
//  NOCList-ObjC
//
//  Created by Lydia Zhang on 5/11/20.
//  Copyright © 2020 Lydia Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

@property NSNumber *accessLevel;
@property NSNumber *compromised;
@property NSString *coverName;
@property NSString *realName;

- (instancetype)initWithCoverName:(NSString *)coverName RealName:(NSString *)realName AccessLevel:(int)accessLevel Compromised:(BOOL)compromised;

@end

NS_ASSUME_NONNULL_END
