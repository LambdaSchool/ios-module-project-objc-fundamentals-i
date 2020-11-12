//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by BrysonSaclausa on 11/10/20.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype)initWithCodeName:(NSString *) codeName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)compromised
{
    if (self = [super init])
    {
        self.codeName = codeName;
        self.realName = realName;
        self.accessLevel = [NSNumber numberWithInt:accessLevel];
        self.compromised = [NSNumber numberWithBool:compromised];
        
    }
    return self;
}
@end
