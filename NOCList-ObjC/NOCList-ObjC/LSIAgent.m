//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Alex Shillingford on 4/11/20.
//  Copyright © 2020 shillwil. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

-(instancetype)initWithCoverName:(NSString *)coverName
                        realName:(NSString *)realName
                     accessLevel:(int *)accessLevel
                     compromised:(BOOL *)compromised
{
    
    self = [super init];
    
    if (self) {
        _coverName = coverName;
        _realName = realName;
        
        NSNumber *access = [NSNumber numberWithInt:accessLevel];
        _accessLevel = access;
        
        NSNumber *isCompromised = [NSNumber numberWithBool:compromised];
        _compromised = isCompromised;
    }
    
    return self;
}

@end
