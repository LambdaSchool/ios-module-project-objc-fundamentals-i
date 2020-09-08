//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Ezra Black on 6/8/20.
//  Copyright © 2020 Casanova Studios. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

-(instancetype)initWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)compromised
{
    self = [super init];
    if (self != nil)
    {
        _coverName = coverName;
        _realName = realName;
        NSNumber *accessNumber = [NSNumber numberWithInt:accessLevel];
        _accessLevel = accessNumber;
        NSNumber *compromisedValue = [NSNumber numberWithBool:compromised];
        _compromised = compromisedValue;
    }
    return self;
}
@end
