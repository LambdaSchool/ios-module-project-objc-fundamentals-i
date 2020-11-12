//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Kenneth Jones on 11/11/20.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype)initWithCoverName:(NSString *)coverName
                         realName:(NSString *)realName
                      accessLevel:(int)accessLevel
                      compromised:(BOOL)compromised
{
    if (self = [super init]) {
        self.coverName = coverName;
        self.realName = realName;
        self.accessLevel = @(accessLevel);
        self.compromised = @(compromised);
    }
    return self;
}

@end
