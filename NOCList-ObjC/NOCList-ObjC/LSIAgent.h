//
//  LSIAgent.h
//  NOCList-ObjC
//
//  Created by Ufuk Türközü on 13.04.20.
//  Copyright © 2020 Ufuk Türközü. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

// MARK: - Properties
@property NSString *coverName;
@property NSString *realName;
@property NSNumber *accessLevel;
@property NSNumber *compromised;

- (instancetype)initWith:(NSString *)coverName
                realName:(NSString *)realName
             accessLevel:(int *)accessLevel
             compromised:(BOOL *)compromised;

@end

NS_ASSUME_NONNULL_END
