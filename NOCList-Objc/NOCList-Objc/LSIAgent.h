//
//  LSIAgent.h
//  NOCList-Objc
//
//  Created by Chad Rutherford on 2/17/20.
//  Copyright © 2020 Chad Rutherford. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LSIAgent : NSObject

@property NSString *coverName;
@property NSString *realName;
@property NSNumber *accessLevel;
@property NSNumber *compromised;

- (instancetype) initWithCoverName: (NSString *) coverName realName: (NSString *) realName accessLevel: (int) accessLevel compromised: (BOOL) compromised;

@end
