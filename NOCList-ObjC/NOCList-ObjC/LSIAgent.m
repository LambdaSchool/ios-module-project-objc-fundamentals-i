//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Shawn James on 6/7/20.
//  Copyright © 2020 Shawn James. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype)initWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)compromised {
    self = [super init];
    if (self != nil) {
        _coverName = coverName;
        _realName = realName;
        _accessLevel = [NSNumber numberWithInt:accessLevel];
        _compromised = [NSNumber numberWithInt:compromised];
    }
    return self;
}



@end
