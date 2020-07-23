//
//  LSIAgent.h
//  NOCList-ObjC
//
//  Created by Jarren Campos on 7/22/20.
//  Copyright © 2020 Jarren Campos. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

@property NSString *coverName;
@property NSString *realName;
@property NSNumber *accessLevel;
@property NSNumber *compromised;

- (instancetype)initAgentWithCoverName:(NSString *)coverName
                              realName:(NSString *)realName
                           accessLevel:(int)accessLevel
                         isCompromised:(BOOL)isCompromised;

@end

NS_ASSUME_NONNULL_END
