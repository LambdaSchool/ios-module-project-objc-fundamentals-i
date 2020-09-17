//
//  LSIAgent.h
//  NOCList-ObjC
//
//  Created by Clayton Watkins on 9/17/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

@property NSString *coverName;
@property NSString *realName;
@property NSNumber *accessLevel;
@property NSNumber *compromised;

- (instancetype)init:(NSString *) coverName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)compromised;

@end

NS_ASSUME_NONNULL_END
