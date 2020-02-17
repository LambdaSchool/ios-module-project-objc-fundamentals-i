//
//  LSIAgent.m
//  NOCList-Objc
//
//  Created by Chad Rutherford on 2/17/20.
//  Copyright © 2020 Chad Rutherford. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype) initWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLevel:(int *)accessLevel compromised:(BOOL *)compromised {
    self = [super init];
    if (self) {
        _coverName = coverName;
        _realName = realName;
        NSNumber *accessNumber = [NSNumber numberWithInt:*accessLevel];
        _accessLevel = accessNumber;
        NSNumber *compromisedValue = [NSNumber numberWithInt:*compromised];
        _compromised = compromisedValue;
    }
    return self;
}

@end
