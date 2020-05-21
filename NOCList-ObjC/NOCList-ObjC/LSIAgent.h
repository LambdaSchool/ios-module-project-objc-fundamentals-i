//
//  LSIAgent.h
//  NOCList-ObjC
//
//  Created by Sal B Amer on 5/20/20.
//  Copyright © 2020 Sal B Amer. All rights reserved.
//
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

// declare properties in the header for each attribute from the records above. For integer and boolean values, model the property as an NSNumber.
//Declare an Obj-C initializer method in the header that passes in all of the above attributes so you can initialize an agent object in one step. For accessLevel, pass the value in as an int primitive. For compromised pass the value in as a BOOL

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

@property (nonatomic) NSString * coverName;
@property (nonatomic) NSString * realName;
@property (nonatomic) NSNumber * accessLevel;
@property (nonatomic) NSNumber * compromised;


// declare methods here
- (instancetype)initWithagentsName: (NSString *)coverName realName: (NSString *)realName accessLevel: (int)accessLevel compromised: (BOOL)compromised;

@end

NS_ASSUME_NONNULL_END
