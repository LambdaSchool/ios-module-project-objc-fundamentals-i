//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Sal B Amer on 5/20/20.
//  Copyright © 2020 Sal B Amer. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

//create initializer
- (instancetype)agentsMethod:(NSString *)coverName
                realName:(NSString *)realName
                accessLevel:(int)accessLevel
                compromised:(BOOL)compromised

{
  if (self != nil) {
    NSNumber *accessLevelNumber = [NSNumber numberWithInt: accessLevel];
    NSNumber *compromised = [NSNumber numberWithBool:compromised];
    
    _coverName = coverName;
    _realName = realName;
    _accessLevel = accessLevelNumber;
    _compromised = compromised;
    
  }
  return self;
}



@end
