//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Elizabeth Thomas on 9/16/20.
//  Copyright © 2020 Libby Thomas. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype)initWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLvel:(int)accessLevel compromised:(BOOL)compromised
{
    if (self = [super init]) {
        self.coverName = coverName;
        self.realName = realName;
        self.accessLevel = [NSNumber numberWithInt: accessLevel];
        self.compromised = [NSNumber numberWithBool: compromised];
    }
    return self;
}

@end
