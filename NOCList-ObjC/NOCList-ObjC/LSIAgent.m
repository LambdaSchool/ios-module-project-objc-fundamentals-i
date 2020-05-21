//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by denis cedeno on 5/21/20.
//  Copyright © 2020 DenCedeno Co. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype)initAgentCoverName:(NSString *)coverName
                 initAgentRealName:(NSString *)realName
                   initAccessLevel:(int)accessLevel
                   initCompromised:(BOOL)isCompromised {
    if (self = [super init]) {
        self.coverName = coverName;
        self.realName = realName;
        self.accessLevel = [NSNumber numberWithInt: accessLevel];
        self.isCompromised = [NSNumber numberWithInt: isCompromised];
    }
    return self;
}

@end
