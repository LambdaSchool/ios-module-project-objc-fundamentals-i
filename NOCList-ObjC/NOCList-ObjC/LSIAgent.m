//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Mark Poggi on 6/8/20.
//  Copyright © 2020 Mark Poggi. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype)initWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)isCompromised
{
    self = [super init];
     if (self != nil) {
         _coverName = coverName;
         _realName = realName;
         NSNumber *intAccessLevel = [NSNumber numberWithInt:accessLevel];
         _accessLevel = intAccessLevel;
         NSNumber *boolIsCompromised = [NSNumber numberWithBool:isCompromised];
         _isCompromised = boolIsCompromised;
     }
     return self;
}

@end


