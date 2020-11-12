//
//  LSIAgent.m
//  NOCListObjC
//
//  Created by Cora Jacobson on 11/11/20.
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
        self.accessLevel = [NSNumber numberWithInt:accessLevel];
        self.compromised = [NSNumber numberWithBool:compromised];
    }
    return self;
}

@end
