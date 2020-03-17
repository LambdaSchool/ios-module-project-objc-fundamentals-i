//
//  LSIAgent.h
//  NOC-List-Objc
//
//  Created by Aaron Cleveland on 3/17/20.
//  Copyright © 2020 Aaron Cleveland. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LSIAgent : NSObject

@property NSString *coverName;
@property NSString *realName;
@property NSNumber *accessLevel;
@property NSNumber *compromised;

- (instancetype)initWithCoverName:(NSString *)coverName
                realName:(NSString *)realName
                accessLevel:(int)accessLevel
                compromised:(BOOL)compromised;

@end
