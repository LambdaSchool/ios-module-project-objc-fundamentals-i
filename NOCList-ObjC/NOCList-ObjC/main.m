//
//  main.m
//  NOCList-ObjC
//
//  Created by Elizabeth Thomas on 9/16/20.
//  Copyright © 2020 Libby Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        LSIAgent *agentOne = [[LSIAgent alloc]
                              initWithCoverName:@"Ethan Hunt"
                              realName:@"Tom Cruise"
                              accessLvel:8
                              compromised:false];

        LSIAgent *agentTwo = [[LSIAgent alloc]
                              initWithCoverName:@"Jim Phelps"
                              realName:@"Jon Voight"
                              accessLvel:9
                              compromised:true];

        LSIAgent *agentThree = [[LSIAgent alloc]
                                initWithCoverName:@"Claire Phelps"
                                realName:@"Emmanuelle Beart"
                                accessLvel:5
                                compromised:false];

        LSIAgent *agentFour = [[LSIAgent alloc]
                               initWithCoverName:@"Eugene Kittridge"
                               realName:@"Henry Czerny"
                               accessLvel:10
                               compromised:true];

        LSIAgent *agentFive = [[LSIAgent alloc]
                               initWithCoverName:@"Franz Krieger"
                               realName:@"Jean Reno"
                               accessLvel:4
                               compromised:false];

        LSIAgent *agentSix = [[LSIAgent alloc]
                              initWithCoverName:@"Luther Stickell"
                              realName:@"Ving Rhames"
                              accessLvel:4
                              compromised:false];

        LSIAgent *agentSeven = [[LSIAgent alloc]
                                initWithCoverName:@"Sarah Davies"
                                realName:@"Kristin Scott Thomas"
                                accessLvel:5
                                compromised:true];

        LSIAgent *agentEight = [[LSIAgent alloc]
                                initWithCoverName:@"Max RotGab"
                                realName:@"Vanessa Redgrave"
                                accessLvel:4
                                compromised:false];

        LSIAgent *agentNine = [[LSIAgent alloc]
                               initWithCoverName:@"Hannah Williams"
                               realName:@"Ingeborga Dapunaite"
                               accessLvel:5
                               compromised:true];

        LSIAgent *agentTen = [[LSIAgent alloc]
                              initWithCoverName:@"Jack Harmon"
                              realName:@"Emilio Estevez"
                              accessLvel:6
                              compromised:true];

        LSIAgent *agentEleven = [[LSIAgent alloc]
                                 initWithCoverName:@"Frank Barnes"
                                 realName:@"Dale Dye"
                                 accessLvel:9
                                 compromised:false];

        NSMutableArray *agents = [NSMutableArray new];
        [agents addObject:agentOne];
        [agents addObject:agentTwo];
        [agents addObject:agentThree];
        [agents addObject:agentFour];
        [agents addObject:agentFive];
        [agents addObject:agentSix];
        [agents addObject:agentSeven];
        [agents addObject:agentEight];
        [agents addObject:agentNine];
        [agents addObject:agentTen];
        [agents addObject:agentEleven];


    }
    return 0;
}


