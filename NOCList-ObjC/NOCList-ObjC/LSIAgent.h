//
//  LSIAgent.h
//  NOCList-ObjC
//
//  Created by Ezra Black on 6/8/20.
//  Copyright © 2020 Casanova Studios. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

//MARK: - Properties
@property NSString *coverName;
@property NSString *realName;
@property NSNumber *accessLevel;
@property NSNumber *compromised;
- (instancetype)initWithCoverName:(NSString *) coverName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)compromised;

@end
NS_ASSUME_NONNULL_END
