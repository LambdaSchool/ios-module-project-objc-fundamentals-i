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


// MARK: - Exploration
- (void)explorePrimitives
{
    //
    // Primitives - number types
    //
    NSLog(@"---------------Primitives---------------");
    // Integer
    // 4 bytes wide, -2,147,483,648 through 2,147,483,647
    int age = 30;
    NSLog(@"Hello! You are %d years old.", age);
    // Long integer
    // 8 bytes wide, -9,223,372,036,854,775,808 through 9,223,372,036,854,775,807
    long aLong = 9223372036854;
    NSLog(@"%ld", aLong);
    // Single precision floating-point, 32-bit number
    float aFloat = -21.09f;
    NSLog(@"%f", aFloat);
    NSLog(@"%.2f", aFloat);
    // Double precision floating-point, 64-bit number
    double aDouble = -21.09;
    NSLog(@"%.2f", aDouble);
    NSLog(@"%e", aDouble);
    // Boolean
    // only two value choices, YES for true, NO for false
    BOOL isBool = YES;
    NSLog(@"%d", isBool);  // prints 1 for YES, 0 for NO
    NSLog(@"%@", isBool ? @"YES" : @"NO");
    //
    // Math
    //
    // All standard arithmetic operators apply: +, -, *, /, %
    // Integer division, result is always a whole number and not rounded
    int integerResult = 5 / 4;
    NSLog(@"Integer division: %d", integerResult);
    // Double division, 1 double and 1 int operand, result is promoted to double
    double doubleResult = 5.0 / 4;
    NSLog(@"Floating-point division: %f", doubleResult);
    // Floating point imprecision
    // Print statements show floating point numbers aren't as precise as they appear
    NSLog(@"%.17f", .1);
    NSLog(@"%.1f", 4.2 - 4.1); // actual answer: 0.10000000000000053
    //
    // NSInteger
    //
    // autosizes itself based on current platform
    NSInteger anInteger = -6;
    NSUInteger aPositiveInteger = 8;
    NSLog(@"anInteger: %ld", (long)anInteger);
    NSLog(@"aPositiveInteger: %lu", (unsigned long)aPositiveInteger); // UInt64(aPositiveInteger)
    NSLog(@"---------------End Primitives---------------\n\n");
}



- (void)exploreObjects
{
    //
    // Objects (class-based types)
    //
    NSLog(@"---------------Objects---------------");
    // NSString
    NSString *lambda = @"Lambda School";
    NSLog(@"%@", lambda);
//    NSLog(lambda); // don't do this!
    // String concatenation/interpolation
    // Swift
    //let width = 94
    //let label = "The width is \(width)"
    NSString *label = @"The width is";
    int width = 94;
    NSString *widthLabel = [NSString stringWithFormat:@"%@ %d", label, width];
    NSLog(@"%@", widthLabel);
    // id type used to store an object of any type
    // Swift
    // let anyObject: Any = "Hello"
    id mysteryObject = @"An NSString object";
    NSLog(@"%@", [mysteryObject description]);
//    NSLog(@"The count is %d", [mysteryObject count]);
    mysteryObject = @{@"model": @"Ford", @"year": @1967};
    NSLog(@"%@", [mysteryObject description]);
//    NSLog(@"The count is %d", [mysteryObject count]);
    NSLog(@"---------------End Objects---------------");
}

@end
