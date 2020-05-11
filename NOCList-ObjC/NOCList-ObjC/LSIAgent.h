//
//  LSIAgent.h
//  NOCList-ObjC
//
//  Created by Christopher Devito on 5/11/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

@property NSString *coverName;
@property NSString *realName;
@property NSNumber *accessLevel;
@property NSNumber *isCompromised;

- (instancetype)initWithCoverName:(NSString *)coverName
                         realName:(NSString *)realName
                      accessLevel:(int)accessLevel
                    isCompromised:(BOOL)isCompromised;

@end

NS_ASSUME_NONNULL_END
