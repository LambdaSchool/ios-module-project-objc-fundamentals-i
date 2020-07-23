//
//  LSIAgent.h
//  NOCList-ObjC
//
//  Created by Chad Parker on 7/22/20.
//  Copyright © 2020 Chad Parker. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/*
 coverName: "Ethan Hunt", realName: "Tom Cruise", accessLevel: 8, compromised: false
 coverName: "Jim Phelps", realName: "Jon Voight", accessLevel: 9, compromised: true
 coverName: "Claire Phelps", realName: "Emmanuelle Beart", accessLevel: 5, compromised: false
 coverName: "Eugene Kittridge", realName: "Henry Czerny", accessLevel: 10, compromised: true
 coverName: "Franz Krieger", realName: "Jean Reno", accessLevel: 4, compromised: false
 coverName: "Luther Stickell", realName: "Ving Rhames", accessLevel: 4, compromised: false
 coverName: "Sarah Davies", realName: "Kristin Scott Thomas", accessLevel: 5, compromised: true
 coverName: "Max RotGrab", realName: "Vanessa Redgrave", accessLevel: 4, compromised: false
 coverName: "Hannah Williams", realName: "Ingeborga Dapkūnaitė", accessLevel: 5, compromised: true
 coverName: "Jack Harmon", realName: "Emilio Estevez", accessLevel: 6, compromised: true
 coverName: "Frank Barnes", realName: "Dale Dye", accessLevel: 9, compromised: false
 */

@interface LSIAgent : NSObject

@property (nonatomic) NSString *coverName;
@property (nonatomic) NSString *realName;
@property (nonatomic) NSNumber *accessLevel;
@property (nonatomic) NSNumber *compromised;

- (instancetype)initWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)compromised;

@end

NS_ASSUME_NONNULL_END
