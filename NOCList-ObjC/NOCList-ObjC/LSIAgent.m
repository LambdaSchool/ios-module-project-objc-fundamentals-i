//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Bhawnish Kumar on 6/8/20.
//  Copyright © 2020 Bhawnish Kumar. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype)valueWithName:(NSString *)coverName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)compromised
{
//      self = [super init];
        if (self != nil) {
    //        do our setup
            // always use _instanceVariableName when doing assignments, not self.LargeNumber -> we don't want side effects.
            _coverName = coverName;
            _realName = realName;
            _accessLevel = [NSNumber numberWithInt:accessLevel];
            _compromised = [NSNumber numberWithBool:compromised];
            
            
        }
        return self;
}



@end
