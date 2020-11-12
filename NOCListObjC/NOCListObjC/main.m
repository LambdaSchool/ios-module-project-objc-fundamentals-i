//
//  main.m
//  NOCListObjC
//
//  Created by Cora Jacobson on 11/11/20.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        LSIAgent *ethan = [[LSIAgent alloc] initWithCoverName:@"Ethan Hunt"
                                                     realName:@"Tom Cruise"
                                                  accessLevel:8
                                                  compromised:NO];
        LSIAgent *jim = [[LSIAgent alloc] initWithCoverName:@"Jim Phelps"
                                                   realName:@"Jon Voight"
                                                accessLevel:9
                                                compromised:YES];
        LSIAgent *claire = [[LSIAgent alloc] initWithCoverName:@"Claire Phelps"
                                                   realName:@"Emmanuelle Beart"
                                                accessLevel:5
                                                compromised:NO];
        LSIAgent *eugene = [[LSIAgent alloc] initWithCoverName:@"Eugene Kittridge"
                                                   realName:@"Henry Czerny"
                                                accessLevel:10
                                                compromised:YES];
        LSIAgent *franz = [[LSIAgent alloc] initWithCoverName:@"Franz Krieger"
                                                   realName:@"Jean Reno"
                                                accessLevel:4
                                                compromised:NO];
        LSIAgent *luther = [[LSIAgent alloc] initWithCoverName:@"Luther Stickell"
                                                   realName:@"Ving Rhames"
                                                accessLevel:4
                                                compromised:NO];
        LSIAgent *sarah = [[LSIAgent alloc] initWithCoverName:@"Sarah Davies"
                                                   realName:@"Kristin Scott Thomas"
                                                accessLevel:5
                                                compromised:YES];
        LSIAgent *max = [[LSIAgent alloc] initWithCoverName:@"Max RotGrab"
                                                   realName:@"Vanessa Redgrave"
                                                accessLevel:4
                                                compromised:NO];
        LSIAgent *hannah = [[LSIAgent alloc] initWithCoverName:@"Hannah Williams"
                                                   realName:@"Ingeborga Dapkūnaitė"
                                                accessLevel:5
                                                compromised:YES];
        LSIAgent *jack = [[LSIAgent alloc] initWithCoverName:@"Jack Harmon"
                                                   realName:@"Emilio Estevez"
                                                accessLevel:6
                                                compromised:YES];
        LSIAgent *frank = [[LSIAgent alloc] initWithCoverName:@"Frank Barnes"
                                                   realName:@"Dale Dye"
                                                accessLevel:9
                                                compromised:NO];
        
        NSArray *agents = @[ethan, jim, claire, eugene, franz, luther, sarah, max, hannah, jack, frank];
        
    }
    return 0;
}
