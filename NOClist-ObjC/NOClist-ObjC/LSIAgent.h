//
//  LSIAgent.h
//  NOClist-ObjC
//
//  Created by Enrique Gongora on 4/13/20.
//  Copyright © 2020 Enrique Gongora. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

// Properties
@property NSString *coverName;
@property NSString *realName;
@property NSNumber *accessLevel;
@property NSNumber *compromised;

// Instance
- (instancetype)initWithCoverName:(NSString *)coverName
                      realName:(NSString *)realName
                      accessLevel:(int)accessLevel
                      compromised:(BOOL) compromised;

@end

NS_ASSUME_NONNULL_END
