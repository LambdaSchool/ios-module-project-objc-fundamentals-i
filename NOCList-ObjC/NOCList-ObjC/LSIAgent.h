//
//  LSIAgent.h
//  NOCList-ObjC
//
//  Created by Sean Acres on 7/22/20.
//  Copyright © 2020 Sean Acres. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

@property (nonatomic) NSString *coverName;
@property (nonatomic) NSString *realName;
@property (nonatomic) NSNumber *accessLevel;
@property (nonatomic) NSNumber *compromised;


@end

NS_ASSUME_NONNULL_END
