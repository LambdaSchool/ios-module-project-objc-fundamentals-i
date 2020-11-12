//
//  LSIAgent.m
//  NOCList-Objc
//
//  Created by Norlan Tibanear on 11/11/20.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype)initCoverName:(NSString *) coverName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)compromised {
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
 
    
