//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Christopher Devito on 5/11/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype)initWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLevel:(int)accessLevel isCompromised:(BOOL)isCompromised {
    self = [super init];
    if(self != nil) {
        _coverName = coverName;
        _realName = realName;
        NSNumber *intAccessLevel = [NSNumber numberWithInt:accessLevel];
        _accessLevel = intAccessLevel;
        NSNumber *boolAsNumber = [NSNumber numberWithBool:isCompromised];
        _isCompromised = boolAsNumber;
    }
    return self;
}
@end
