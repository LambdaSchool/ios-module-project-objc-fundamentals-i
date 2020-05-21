//
//  LSIAgent.h
//  NOCList-ObjC
//
//  Created by denis cedeno on 5/21/20.
//  Copyright © 2020 DenCedeno Co. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

@property (nonatomic) NSString *coverName;
@property (nonatomic) NSString *realName;
@property (nonatomic) NSNumber *accessLevel;
@property (nonatomic) NSNumber *isCompromised;

- (instancetype)initAgentCoverName:(NSString *)coverName
                initAgentRealName:(NSString *)realName
                initAccessLevel:(int)accessLevel
                initCompromised:(BOOL)isCompromised;

@end

NS_ASSUME_NONNULL_END
