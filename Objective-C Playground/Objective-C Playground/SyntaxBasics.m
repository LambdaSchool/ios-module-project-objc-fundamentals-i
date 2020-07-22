//
//  SyntaxBasics.m
//  Objective-C Playground
//
//  Created by Matthew Martindale on 7/21/20.
//  Copyright © 2020 Matthew Martindale. All rights reserved.
//

#import "SyntaxBasics.h"

@implementation SyntaxBasics

+ (void)classMethod
{
    NSLog(@"You called a class method on %@", self);
}



- (instancetype)initWithLargeNumber:(NSNumber *)largeNumber smallInteger:(int)smallInteger
{
    if (self = [super init]) {
        self.largeNumber = largeNumber;
        self.smallInteger = smallInteger;
    }
    return self;
}



- (void)instanceMethod
{
    NSLog(@"You called an instance method on %@!", self);
}

- (void)instanceMethodWithString:(NSString *)aString
{
    NSLog(@"You called an instance method with \"%@\" on %@!", aString, self);
}

- (void)instanceMethodWithString:(NSString *)aString andNumber:(nonnull NSNumber *)aNumber
{
    NSLog(@"You called an instance method with \"%@\" and %@ on %@!", aString, aNumber, self);
}

- (NSString *)returningInstanceMethodWithString:(NSString *)aString
andNumber:(NSNumber *)aNumber
{
    NSLog(@"You called an instance method with \"%@\" and %@ on %@!", aString, aNumber, self);
    
    return @"Got it!";
}

@end
