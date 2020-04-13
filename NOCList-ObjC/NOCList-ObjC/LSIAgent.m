//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by scott harris on 4/13/20.
//  Copyright © 2020 scott harris. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

-(instancetype)initWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)compromised {
    self = [super init];
    if (self) {
        _realName = realName;
        _coverName = coverName;
        _accessLevel = [[NSNumber alloc] initWithInt:accessLevel];
        _compromised = [[NSNumber alloc] initWithBool:compromised];
        
    }
    
    return self;
}

@end
