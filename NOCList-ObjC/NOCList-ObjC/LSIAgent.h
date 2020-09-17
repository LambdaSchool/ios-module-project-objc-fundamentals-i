//
//  LSIAgent.h
//  NOCList-ObjC
//
//  Created by Elizabeth Thomas on 9/16/20.
//  Copyright © 2020 Libby Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

@property NSString *coverName;
@property NSString *realName;
@property NSNumber *accessLevel;
@property NSNumber *compromised;

- (instancetype)initWithCoverName:(NSString *)coverName
                         realName:(NSString *)realName
                       accessLvel:(int)accessLevel
                      compromised:(BOOL)compromised;



@end

NS_ASSUME_NONNULL_END
