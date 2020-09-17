//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Ian French on 9/16/20.
//  Copyright © 2020 Ian French. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

-(instancetype) initWithCoverName: (NSString *)coverName realName: (NSString *)realName accessLevel: (int)accessLevel compromised: (BOOL)compromised {
    self = [super init];

    if (self) {
        _coverName = coverName;
        _realName = realName;
        _accessLevel = [[NSNumber alloc] initWithInt:accessLevel];
        _compromised = [[NSNumber alloc] initWithBool: compromised];
    }

    return self;
}
@end
