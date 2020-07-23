//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Claudia Maciel on 7/22/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

-(instancetype) initWithCoverName: (NSString*) coverName RealName: (NSString*) realName AccessLevel: (int) accessLevel Compromised: (BOOL) compromised {
    self = [super init];
    
    if (self) {
        _coverName = coverName;
        _realName = realName;
        _accessLevel = [NSNumber numberWithInt:accessLevel];
        _compromised = [NSNumber numberWithInt:compromised];
    }
    
    return self;
}




@end
