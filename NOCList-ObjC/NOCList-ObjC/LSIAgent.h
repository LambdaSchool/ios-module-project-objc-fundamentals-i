//
//  LSIAgent.h
//  NOCList-ObjC
//
//  Created by Bhawnish Kumar on 6/8/20.
//  Copyright © 2020 Bhawnish Kumar. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

@property NSString *coverName;
@property NSString *realName;
@property int accessLevel;
@property BOOL compromised;

- (instancetype)valueWithName:(NSString *)coverName realName:(NSString *)realName accessLevel:(int *)accessLevel compromised:(BOOL *)compromised;

- (void)allTheAgents;

@end

NS_ASSUME_NONNULL_END
