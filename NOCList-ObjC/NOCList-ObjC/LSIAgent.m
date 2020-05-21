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
- (instancetype)initWithagentsName: (NSString *)coverName
                realName: (NSString *)realName
                accessLevel: (int)accessLevel
                compromised: (BOOL)compromised {

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
