//
//  LSIAgent.m
//  NOCList-Obj-C
//
//  Created by Lambda_School_Loaner_268 on 5/11/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype)initWithCoverName:(NSString *)coverName
                         realName:(NSString *)realName
                      accessLevel:(int)accessLevel
                      compromised:(BOOL)compromised; {
    self = [super init];
    if (self) {
        _coverName = coverName;
        _realName = realName;
        _accessLevel = [NSNumber numberWithInt: accessLevel];
        _compromised = [NSNumber numberWithBool: compromised];
    }
    return self;
}
@end
