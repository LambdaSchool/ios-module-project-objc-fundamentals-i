//
//  LSIAgent.m
//  NOCList-Objc
//
//  Created by Kenny on 6/8/20.
//  Copyright © 2020 Hazy Studios. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype)initWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLevel:(int)accessLevel copromised:(BOOL)compromised
{
    self = [super init];
    if (self) {
        _coverName = coverName;
        _realName = realName;

        _accessLevel = [NSNumber numberWithInt: accessLevel];

        _compromised = [NSNumber numberWithBool: compromised];
    }

    return self;
}

@end


