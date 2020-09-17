//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Bronson Mullens on 9/16/20.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype)init:(NSString *) coverName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)compromised {
    self = [super init];
    if (self != nil) {
        _coverName = coverName;
        _realName = realName;
        NSNumber *accessLevel_ = [NSNumber numberWithInt:accessLevel];
        _accessLevel = accessLevel_;
        NSNumber *compromised_ = [NSNumber numberWithBool:compromised];
        _compromised = compromised_;
    }
    return self;
}

@end
