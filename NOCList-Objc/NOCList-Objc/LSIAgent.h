//
//  LSIAgent.h
//  NOCList-Objc
//
//  Created by Norlan Tibanear on 11/11/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

@property NSString *coverName;
@property NSString *realName;
@property NSNumber *accessLevel;
@property NSNumber *compromised;

- (instancetype)initCoverName:(NSString *)coverName
                     realName:(NSString *)realName
                  accessLevel:(int)accessLevel
                  compromised:(BOOL)compromised;



@end

NS_ASSUME_NONNULL_END
