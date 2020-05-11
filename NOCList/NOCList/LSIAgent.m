//
//  LSIAgent.m
//  NOCList
//
//  Created by Shawn Gee on 5/11/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

-(instancetype)initAgentWithCoverName:(NSString *)coverName
                             realName:(NSString *)realName
                          accessLevel:(int)accessLevel
                        isCompromised:(BOOL)isCompromised {
    self = [super init];
    if (self != nil) {
        _coverName = coverName;
        _realName = realName;
        _accessLevel = [NSNumber numberWithInt:accessLevel];
        _isCompromised = [NSNumber numberWithBool:isCompromised];
    }
    return self;
}


@end
