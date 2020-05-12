//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Wyatt Harrell on 5/11/20.
//  Copyright © 2020 Wyatt Harrell. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype)initWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)compromised {
    self = [super init];
    
    if (self != nil) {
        _coverName = coverName;
        _realName = realName;
        _accessLevel = [NSNumber numberWithInt:accessLevel];
        _compromised = [NSNumber numberWithBool:compromised];
    }
    return self;
    
}

@end
