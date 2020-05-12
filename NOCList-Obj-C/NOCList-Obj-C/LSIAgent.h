//
//  LSIAgent.h
//  NOCList-Obj-C
//
//  Created by Lambda_School_Loaner_268 on 5/11/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject


// Properties
@property NSString *coverName;

@property NSString *realName;

@property NSNumber *accessLevel;

@property NSNumber *compromised;

// Initializers

- (instancetype)initWithCoverName:(NSString *)coverName
                realName:(NSString *)realName
                accessLevel:(int)accessLevel
                compromised:(BOOL)compromised;


@end

NS_ASSUME_NONNULL_END
