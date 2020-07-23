//
//  LSIAgent.h
//  NOC List Objective-C
//
//  Created by Gerardo Hernandez on 7/22/20.
//  Copyright © 2020 Gerardo Hernandez. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

//Properties
@property (strong, nonatomic) NSString *coverName;
@property (strong, nonatomic) NSString *realName;
@property (strong, nonatomic) NSNumber *accessLevel;
@property (strong, nonatomic) NSNumber *compromised;





@end

NS_ASSUME_NONNULL_END
