//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Bhawnish Kumar on 6/8/20.
//  Copyright © 2020 Bhawnish Kumar. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

//coverName: "Ethan Hunt", realName: "Tom Cruise", accessLevel: 8, compromised: false
//coverName: "Jim Phelps", realName: "Jon Voight", accessLevel: 9, compromised: true
//coverName: "Claire Phelps", realName: "Emmanuelle Beart", accessLevel: 5, compromised: false
//coverName: "Eugene Kittridge", realName: "Henry Czerny", accessLevel: 10, compromised: true
//coverName: "Franz Krieger", realName: "Jean Reno", accessLevel: 4, compromised: false
//coverName: "Luther Stickell", realName: "Ving Rhames", accessLevel: 4, compromised: false
//coverName: "Sarah Davies", realName: "Kristin Scott Thomas", accessLevel: 5, compromised: true
//coverName: "Max RotGrab", realName: "Vanessa Redgrave", accessLevel: 4, compromised: false
//coverName: "Hannah Williams", realName: "Ingeborga Dapkūnaitė", accessLevel: 5, compromised: true
//coverName: "Jack Harmon", realName: "Emilio Estevez", accessLevel: 6, compromised: true
//coverName: "Frank Barnes", realName: "Dale Dye", accessLevel: 9, compromised: false


- (void)allTheAgents
{
    
    NSDictionary *agentsList1 = @{@"coverName": @"Ethan Hunt", @"realName": @"Tom Cruise", @"accessLevel": @"8", @"compromised": @NO};
    NSDictionary *agentsList2 = @{@"coverName": @"Jim Phelps", @"realName": @"Jon Voight", @"accessLevel": @"9", @"compromised": @YES};
    NSDictionary *agentsList3 = @{@"coverName": @"Claire Phelps", @"realName": @"Emmanuelle Beart", @"accessLevel": @"5", @"compromised": @NO};
    NSDictionary *agentsList4 = @{@"coverName": @"Eugene Kittridge", @"realName": @"Henry Czerny", @"accessLevel": @"10", @"compromised": @YES};
    NSDictionary *agentsList5 = @{@"coverName": @"Franz Krieger", @"realName": @"Jean Reno", @"accessLevel": @"4", @"compromised": @YES};
    NSDictionary *agentsList6 = @{@"coverName": @"Luther Stickell", @"realName": @"Ving Rhames", @"accessLevel": @"4", @"compromised": @NO};
    NSDictionary *agentsList7 = @{@"coverName": @"Sarah Davies", @"realName": @"Kristin Scott Thomas", @"accessLevel": @"5", @"compromised": @YES};
    NSDictionary *agentsList8 = @{@"coverName": @"Max RotGrab", @"realName": @"Vanessa Redgrave", @"accessLevel": @"4", @"compromised": @NO};
    NSDictionary *agentsList9 = @{@"coverName": @"Hannah Williams", @"realName": @"Ingeborga Dapkūnaitė", @"accessLevel": @"5", @"compromised": @YES};
    NSDictionary *agentsList10 = @{@"coverName": @"Jack Harmon", @"realName": @"Emilio Estevez", @"accessLevel": @"6", @"compromised": @YES};
    NSDictionary *agentsList11 = @{@"coverName": @"Frank Barnes", @"realName": @"Dale Dye", @"accessLevel": @"9", @"compromised": @NO};
}

@end
