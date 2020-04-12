//
//  main.m
//  NOCList-ObjC
//
//  Created by Alex Shillingford on 2/25/20.
//  Copyright © 2020 shillwil. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        LSIAgent *eHunt = [[LSIAgent alloc] initWithCoverName:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:(int)8 compromised:(BOOL)NO];
        
        LSIAgent *jPhelps = [[LSIAgent alloc] initWithCoverName:@"Jim Phelps"
                                                       realName:@"Jon Voight"
                                                    accessLevel:(int)9
                                                    compromised:(BOOL)YES];
        
        LSIAgent *cPhelps = [[LSIAgent alloc] initWithCoverName:@"Claire Phelps"
                                                       realName:@"Emmanuelle Beart"
                                                    accessLevel:(int)5
                                                    compromised:(BOOL)NO];
        
        LSIAgent *eKittridge = [[LSIAgent alloc] initWithCoverName:@"Eugene Kittridge"
                                                          realName:@"Henry Czerny"
                                                       accessLevel:(int)10
                                                       compromised:(BOOL)YES];
        
        LSIAgent *fKrieger = [[LSIAgent alloc] initWithCoverName:@"Franz Krieger"
                                                        realName:@"Jean Reno"
                                                     accessLevel:(int)4
                                                     compromised:(BOOL)NO];
        
        LSIAgent *lStickell = [[LSIAgent alloc] initWithCoverName:@"Luther Stickell"
                                                         realName:@"Ving Rhames"
                                                      accessLevel:(int)4
                                                      compromised:(BOOL)NO];
        
        LSIAgent *sDavies = [[LSIAgent alloc] initWithCoverName:@"Sarah Davies"
                                                       realName:@"Kristin Scott Thomas"
                                                    accessLevel:(int)5
                                                    compromised:(BOOL)YES];
        
        LSIAgent *mRotGrab = [[LSIAgent alloc] initWithCoverName:@"Max RotGrab"
                                                        realName:@"Vanessa Redgrave"
                                                     accessLevel:(int)4
                                                     compromised:(BOOL)NO];
        
        LSIAgent *hWilliams = [[LSIAgent alloc] initWithCoverName:@"Hannah Williams"
                                                         realName:@"Ingeborga Dapkūnaitė"
                                                      accessLevel:(int)5
                                                      compromised:(BOOL)YES];
        
        LSIAgent *jHarmon = [[LSIAgent alloc] initWithCoverName:@"Jack Harmon"
                                                       realName:@"Emilio Esteves"
                                                    accessLevel:(int)6
                                                    compromised:(BOOL)YES];
        
        LSIAgent *fBarnes = [[LSIAgent alloc] initWithCoverName:@"Frank Barnes"
                                                       realName:@"Dale Dye"
                                                    accessLevel:(int)9
                                                    compromised:(BOOL)NO];
        
        NSArray *agents = @[eHunt,
                            jPhelps,
                            cPhelps,
                            eKittridge,
                            fKrieger,
                            lStickell,
                            sDavies,
                            mRotGrab,
                            hWilliams,
                            jHarmon,
                            fBarnes];
        
        int *compromisedAgents = 0;
        
        for (int i = 0; i < agents.count; i++) {
            if ([agents[i] compromised] == YES) {
                *compromisedAgents += 1;
            }
        }
        NSLog(@"Compromised Agents = %d", *compromisedAgents);
    }
    return 0;
}
