//
//  LSIAgent.h
//  NOCList-ObjC
//
//  Created by Rob Vance on 11/11/20.
//

#import <Foundation/Foundation.h>

@interface LSIAgent : NSObject

@property NSString *coverName;
@property NSString *realName;
@property NSNumber *accessLevel;
@property NSNumber *compromised;

- (instancetype)init:(NSString *) coverName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)compromised;


@end
