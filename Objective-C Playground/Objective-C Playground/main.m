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
        SyntaxBasics *object = [[SyntaxBasics alloc] init];
        // Calling the methods
        [object instanceMethod];
        [object instanceMethodWithString:@"Hello!"];
        [object instanceMethodWithString:@"World!" andNumber:@42];
        
    }
    return 0;
}
