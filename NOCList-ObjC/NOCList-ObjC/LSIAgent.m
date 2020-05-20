//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Joshua Rutkowski on 5/20/20.
//  Copyright © 2020 Rutkowski. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

// Step 3: Implement the custom init method in the implementation file of the class.
// Be sure to convert the int and BOOL arguments passed in to NSNumber objects.
- (instancetype)initWithCoverName: (NSString *)coverName
                         realName: (NSString *)realName accessLevel: (int)accessLevel compromised: (BOOL)compromised {
    self = [super init];

    if(self != nil) {
        NSNumber * accessLevelNumber = [NSNumber numberWithInt: accessLevel];
        NSNumber * compromisedNumber = [NSNumber numberWithBool: compromised];

        _coverName = coverName;
        _realName = realName;
        _accessLevel = accessLevelNumber;
        _compromised = compromisedNumber;
    }

    return self;
}

@end
