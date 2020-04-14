//
//  LSIAgent.h
//  NOCList-ObjC
//
//  Created by Nick Nguyen on 4/13/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

//MARK:- Properties
@property NSString *coverName;
@property NSString *realName;
@property NSNumber *accessLevel;
@property NSNumber *compromised;


//MARK:- Init

- (instancetype)initWithCoverName: (NSString *) coverName
                         RealName: (NSString *) realName
                         AccessLevel: (int)accessLevel
                         Compromised: (BOOL)compromised;

                    

@end

NS_ASSUME_NONNULL_END
