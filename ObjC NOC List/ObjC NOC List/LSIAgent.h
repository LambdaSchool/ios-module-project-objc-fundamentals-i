//
//  LSIAgent.h
//  ObjC NOC List
//
//  Created by Chris Gonzales on 4/13/20.
//  Copyright © 2020 Chris Gonzales. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

// Properties

@property NSString *codeName;
@property NSString *realName;
@property NSNumber *accessLevel;
@property NSNumber *compromised;

// Initializer

- (instancetype)initWithAgentInfo:(NSString *)codeName
                 initWithRealName:(NSString *)realName
              initWithAccessLevel:(int *)accessLevel
            initWithIsCompromised:(BOOL *)compromised;

@end

NS_ASSUME_NONNULL_END
