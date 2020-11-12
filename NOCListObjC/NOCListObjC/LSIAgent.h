//
//  LSIAgent.h
//  NOCListObjC
//
//  Created by Cora Jacobson on 11/11/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

@property (nonatomic) NSString *coverName;
@property (nonatomic) NSString *realName;
@property (nonatomic) NSNumber *accessLevel;
@property (nonatomic) NSNumber *compromised;

- (instancetype)initWithCoverName:(NSString *)coverName
                         realName:(NSString *)realName
                      accessLevel:(int) accessLevel
                      compromised:(BOOL) compromised;

@end

NS_ASSUME_NONNULL_END
