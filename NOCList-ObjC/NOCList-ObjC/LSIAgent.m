//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Joe Veverka on 7/13/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype)initWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLevel:(int)accessLevel isCompromised:(BOOL)isCompromised {
    self = [super init];
    if (self != nil) {
        _coverName = coverName;
        _realName = realName;
        _accessLevel = [NSNumber numberWithInt:accessLevel];
        _isCompromised = [NSNumber numberWithInt:isCompromised];
    }
    return self; 
}

@end
