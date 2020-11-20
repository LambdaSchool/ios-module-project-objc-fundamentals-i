//
//  LSIAgent.h
//  NOCList-ObjC
//
//  Created by James McDougall on 11/16/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

@property NSString *coverName;
@property NSString *realName;
@property NSNumber *accessLevel;
@property NSNumber *compromised;

- (instancetype)initWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLevel:(NSNumber *)accessLevel compromised:(NSNumber *)compromised;

@end

NS_ASSUME_NONNULL_END
