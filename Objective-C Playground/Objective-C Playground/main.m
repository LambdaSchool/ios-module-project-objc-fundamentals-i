//
//  main.m
//  Objective-C Playground
//
//  Created by Matthew Martindale on 7/21/20.
//  Copyright © 2020 Matthew Martindale. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SyntaxBasics.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Declaring the class
//        SyntaxBasics *object = [[SyntaxBasics alloc] init];
        // Calling the methods
//        [object instanceMethod];
//        [object instanceMethodWithString:@"Hello!"];
//        [object instanceMethodWithString:@"World!" andNumber:@42];
//        NSString *returnedValue = [object returningInstanceMethodWithString:@"Hi" andNumber:@7];
//        NSLog(@"The method returned %@", returnedValue);
        
//        [SyntaxBasics classMethod];
        
        SyntaxBasics *basics = [[SyntaxBasics alloc] initWithLargeNumber:@87693483554 smallInteger:42];
        
//        [basics explorePrimitives];
//        [basics exploreObjects];
//        [basics exploreCollectionsWithArray:@[
//            @"Malcolm Reynolds",
//            @"Jean-Luc Picard",
//            @"James T. Kirk",
//            @"Kathryn Janeway"
//        ]];
        [basics exploreNumbers];
        
    }
    return 0;
}
