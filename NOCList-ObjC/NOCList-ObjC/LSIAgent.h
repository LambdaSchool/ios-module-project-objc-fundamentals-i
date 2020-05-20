//
//  LSIAgent.h
//  NOCList-ObjC
//
//  Created by Joshua Rutkowski on 5/20/20.
//  Copyright © 2020 Rutkowski. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

//coverName: "Claire Phelps", realName: "Emmanuelle Beart", accessLevel: 5, compromised: false
//coverName: "Eugene Kittridge", realName: "Henry Czerny", accessLevel: 10, compromised: true
//coverName: "Franz Krieger", realName: "Jean Reno", accessLevel: 4, compromised: false
//coverName: "Luther Stickell", realName: "Ving Rhames", accessLevel: 4, compromised: false
//coverName: "Sarah Davies", realName: "Kristin Scott Thomas", accessLevel: 5, compromised: true
//coverName: "Max RotGrab", realName: "Vanessa Redgrave", accessLevel: 4, compromised: false
//coverName: "Hannah Williams", realName: "Ingeborga Dapkūnaitė", accessLevel: 5, compromised: true
//coverName: "Jack Harmon", realName: "Emilio Estevez", accessLevel: 6, compromised: true
//coverName: "Frank Barnes", realName: "Dale Dye", accessLevel: 9, compromised: false

// Step 1: Declare properties in the header for each attribute above.
// For integer and boolean values, model the property as an NSNumber.
@property NSString * coverName;
@property NSString * realName;
@property NSNumber * accessLevel;
@property NSNumber * compromised;

//Step 2: Declare an Obj-C initializer method in the header that passes in all of the above attributes
// so you can initialize an agent object in one step. For accessLevel, pass the value in as an int primitive. For compromised pass the value in as a BOOL.
- (instancetype)initWithCoverName: (NSString *)coverName realName: (NSString *)realName accessLevel: (int)accessLevel compromised: (BOOL)compromised;

@end

NS_ASSUME_NONNULL_END
