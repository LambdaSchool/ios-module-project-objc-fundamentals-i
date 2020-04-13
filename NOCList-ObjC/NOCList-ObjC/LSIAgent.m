//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Ufuk Türközü on 13.04.20.
//  Copyright © 2020 Ufuk Türközü. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

// Swift
/* init(largeNumber: Int) {
 self.largeNumber = largeNumber
 }
 */
- (instancetype)initWith:(NSString *)coverName
   realName:(NSString *)realName
accessLevel:(int)accessLevel
compromised:(BOOL)compromised {
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
