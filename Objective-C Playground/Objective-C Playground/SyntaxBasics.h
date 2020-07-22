//
//  SyntaxBasics.h
//  Objective-C Playground
//
//  Created by Matthew Martindale on 7/21/20.
//  Copyright © 2020 Matthew Martindale. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SyntaxBasics : NSObject

+ (void)classMethod;

- (void)instanceMethod;
- (void)instanceMethodWithString:(NSString *)aString;
- (void)instanceMethodWithString:(NSString *)aString andNumber:(NSNumber *)aNumber;
- (NSString *)returningInstanceMethodWithString:(NSString *)aString
                                      andNumber:(NSNumber *)aNumber;

@end

NS_ASSUME_NONNULL_END
