//
//  main.m
//  NOCList-ObjC
//
//  Created by Karen Rodriguez on 5/10/20.
//  Copyright © 2020 Hector Ledesma. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");

        LSIAgent *agent1 = [[LSIAgent alloc] initWithCoverName:@"Ethan Hunt" realName:@"Tome Cruise" accessLevel:8 compromised:FALSE];

    }
    return 0;
}
