//
//  LSIAgent.h
//  NOCList-ObjC
//
//  Created by Bronson Mullens on 9/16/20.
//

#import <Foundation/Foundation.h>

@interface LSIAgent : NSObject

// MARK: - Properties

@property NSString *coverName;
@property NSString *realName;
@property NSNumber *accessLevel;
@property NSNumber *compromised;

- (instancetype)init:(NSString *) coverName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)compromised;

@end
