//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Nick Nguyen on 4/13/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent
- (instancetype)initWithCoverName:(NSString *)coverName RealName:(NSString *)realName AccessLevel:(int)accessLevel Compromised:(BOOL)compromised {
    self = [super init];
    if (self) {
        _coverName = coverName;
        _realName = realName;
        NSNumber * accessNumber = [NSNumber numberWithInt:accessLevel];
        _accessLevel = accessNumber;
        NSNumber * compromisedValue = [NSNumber numberWithBool:compromised];
        _compromised = compromisedValue;
    }
    return self ;
}
@end
