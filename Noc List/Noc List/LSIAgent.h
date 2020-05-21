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

@property NSString *coverName;
@property NSString *realName;
@property NSNumber *accessLevel;
@property NSNumber *isCompromised;

- (instancetype)initAgentWithCoverName:(NSString *)coverName
                             realName:(NSString *)realName
                            accessLevel:(NSString *)accessLevel
                         isCompromised:(BOOL)isCompromised;

@end

NS_ASSUME_NONNULL_END
