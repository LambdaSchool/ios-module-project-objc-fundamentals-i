//
//  main.m
//  NOCList-ObjC
//
//  Created by Jarren Campos on 7/22/20.
//  Copyright © 2020 Jarren Campos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        LSIAgent *ethanHunt = [[LSIAgent alloc]
                               initAgentWithCoverName:@"Ethan Hunt"
                               realName:@"Tom Cruise"
                               accessLevel:8
                               isCompromised:NO];
        LSIAgent *jimPhelps = [[LSIAgent alloc]
                               initAgentWithCoverName:@"Jim Phelps"
                               realName:@"Jon Voight"
                               accessLevel:9
                               isCompromised:YES];
        LSIAgent *clairePhelps = [[LSIAgent alloc]
                                  initAgentWithCoverName:@"Claire Phelps"
                                  realName:@"Emmanuelle Beart"
                                  accessLevel:5
                                  isCompromised:NO];
        LSIAgent *eugeneKittridge = [[LSIAgent alloc]
                                     initAgentWithCoverName:@"Eugene Kittridge"
                                     realName:@"Henry Czerny"
                                     accessLevel:10
                                     isCompromised:YES];
        LSIAgent *franzKrieger = [[LSIAgent alloc]
                                  initAgentWithCoverName:@"Franz Krieger"
                                  realName:@"Jean Reno"
                                  accessLevel:4
                                  isCompromised:NO];
        LSIAgent *lutherStickell = [[LSIAgent alloc]
                                    initAgentWithCoverName:@"Luther Stickell"
                                    realName:@"Ving Rhames"
                                    accessLevel:4
                                    isCompromised:NO];
        LSIAgent *sarahDavies = [[LSIAgent alloc]
                                 initAgentWithCoverName:@"Sarah Davies"
                                 realName:@"Kristin Scott Thomas"
                                 accessLevel:5
                                 isCompromised:YES];
        LSIAgent *maxRotGrab = [[LSIAgent alloc]
                                initAgentWithCoverName:@"Max RotGrab"
                                realName:@"Vanessa Redgrave"
                                accessLevel:4
                                isCompromised:NO];
        LSIAgent *hannahWilliams = [[LSIAgent alloc]
                                    initAgentWithCoverName:@"Hannah Williams"
                                    realName:@"Ingeborga Dapkūnaitė"
                                    accessLevel:5
                                    isCompromised:YES];
        LSIAgent *jackHarnon = [[LSIAgent alloc]
                                initAgentWithCoverName:@"Jack Harnon"
                                realName:@"Emilio Estevez"
                                accessLevel:6
                                isCompromised:YES];
        LSIAgent *frankBarnes = [[LSIAgent alloc]
                                initAgentWithCoverName:@"Frank Barnes"
                                realName:@"Dale Dye"
                                accessLevel:9
                                isCompromised:NO];
    }
    return 0;
}
