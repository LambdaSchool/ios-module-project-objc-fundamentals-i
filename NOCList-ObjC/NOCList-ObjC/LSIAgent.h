//
//  LSIAgent.h
//  NOCList-ObjC
//
//  Created by Ian French on 9/16/20.
//  Copyright © 2020 Ian French. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

@property NSString *coverName;
@property NSString *realName;
@property NSNumber *accessLevel;
@property NSNumber *compromised;

-(instancetype) initWithCoverName: (NSString *)coverName
                         realName: (NSString *)realName
                      accessLevel: (int)accessLevel
                      compromised: (BOOL)compromised;

@end

NS_ASSUME_NONNULL_END
