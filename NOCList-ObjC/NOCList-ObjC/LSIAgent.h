//
//  LSIAgent.h
//  NOCList-ObjC
//
//  Created by Jorge Alvarez on 3/16/20.
//  Copyright © 2020 Jorge Alvarez. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/*

 Create a model class called LSIAgent and declare properties in the header for each attribute from the records above. For integer and boolean values, model the property as an NSNumber.
 Declare an Obj-C initializer method in the header that passes in all of the above attributes so you can initialize an agent object in one step. For accessLevel, pass the value in as an int primitive. For compromised pass the value in as a BOOL.
 Implement the custom init method in the implementation file of the class. Be sure to convert the int and BOOL arguments passed in to NSNumber objects.

 */

@interface LSIAgent : NSObject

// MARK: - Properties

@property NSString *coverName;
@property NSString *realName;
@property NSNumber *accessLevel;
@property NSNumber *compromised;

// MARK: - Initializers

- (instancetype)initWithCoverName:(NSString *)coverName realName: (NSString *)realName accessLevel: (int)accessLevel compromised: (BOOL)compromised;

// MARK: - Methods

@end

NS_ASSUME_NONNULL_END
