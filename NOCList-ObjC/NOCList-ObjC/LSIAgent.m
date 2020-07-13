//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Enzo Jimenez-Soto on 7/13/20.
//  Copyright © 2020 Enzo Jimenez-Soto. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype)initWithCoverName:(NSString *)coverName realName: (NSString *)realName accessLevel: (int)accessLevel compromised: (BOOL)compromised; {
    
    self = [super init];
    if (self) {
        _coverName = coverName;
        _realName = realName;
        _accessLevel = [NSNumber numberWithInt:accessLevel];
        _compromised = [NSNumber numberWithBool:compromised];
    }
    return self;
}



@end
