//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by James McDougall on 11/16/20.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype)initWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)compromised
{
    if (self = [super init]) {
        _coverName = coverName;
        _realName = realName;
        _accessLevel = [[NSNumber alloc] initWithInt: accessLevel];
        _compromised = [[NSNumber alloc] initWithBool: compromised];
    }
    return self;
}

@end
