//
//  LSIAgent.h
//  NOCList-ObjC
//
//  Created by Matthew Martindale on 7/22/20.
//  Copyright © 2020 Matthew Martindale. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

@property (nonatomic) NSString *coverName;
@property (nonatomic) NSString *realName;
@property (nonatomic) NSNumber *accessLevel;
@property (nonatomic) NSNumber *compromised;

- (instancetype)initCoverName:(NSString *)coverName
                  andRealName:(NSString *)realName
               andAccessLevel:(int)accessLevel
               andCompromised:(BOOL)compromised;

@end

NS_ASSUME_NONNULL_END
