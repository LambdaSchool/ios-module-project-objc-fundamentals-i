//
//  LSIAgent.h
//  NOCList-ObjC
//
//  Created by Tobi Kuyoro on 11/05/2020.
//  Copyright © 2020 Tobi Kuyoro. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

@property NSString * coverName;
@property NSString * realName;
@property NSNumber * accessLevel;
@property NSNumber * compromised;

- (instancetype)initWithCoverName: (NSString *)coverName realName: (NSString *)realName accessLevel: (int)accessLevel compromised: (BOOL)compromised;

@end

NS_ASSUME_NONNULL_END
