//
//  LSIAgent.h
//  NOCList-ObjC
//
//  Created by James McDougall on 3/3/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

//MARK: - Properties -
@property (nonatomic) NSString *coverName;
@property (nonatomic) NSString *realName;
@property (nonatomic) NSNumber *accessLevel;
@property (nonatomic) NSNumber *compromised;

//MARK: - Initializer -
- (instancetype) initWithCoverName:(NSString *)coverName
                 realName:(NSString *)realName
                 accessLevel:(int)accessLevel
                 compromised:(BOOL)compromised;

- (void)checkForCleanAgents;

NS_ASSUME_NONNULL_END
