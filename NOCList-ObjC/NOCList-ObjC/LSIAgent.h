//
//  LSIAgent.h
//  NOCList-ObjC
//
//  Created by Claudia Maciel on 7/22/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

@property (nonatomic) NSString *coverName;
@property (nonatomic) NSString * realName;
@property (nonatomic) int accessLevel;
@property (nonatomic) BOOL compromised;

@end

NS_ASSUME_NONNULL_END
