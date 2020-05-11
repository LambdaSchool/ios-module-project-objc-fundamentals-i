//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Tobi Kuyoro on 11/05/2020.
//  Copyright © 2020 Tobi Kuyoro. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype)initWithCoverName: (NSString *)coverName
                         realName: (NSString *)realName accessLevel: (int)accessLevel compromised: (BOOL)compromised {
    self = [super init];

    if(self != nil) {
        _coverName = coverName;
        _realName = realName;
        
        NSNumber * accessLevelNumber = [NSNumber numberWithInt: accessLevel];
        NSNumber * compromisedNumber = [NSNumber numberWithBool: compromised];
    }

    return self;
}

@end
