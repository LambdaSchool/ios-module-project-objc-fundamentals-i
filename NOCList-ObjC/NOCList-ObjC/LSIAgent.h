//
//  LSIAgent.h
//  NOCList-ObjC
//
//  Created by BrysonSaclausa on 11/10/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

@property NSString *codeName;
@property NSString *realName;
@property NSNumber *accessLevel;
@property NSNumber *compromised;

- (instancetype)init:(NSString *) codeName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)compromised;

@end

NS_ASSUME_NONNULL_END
