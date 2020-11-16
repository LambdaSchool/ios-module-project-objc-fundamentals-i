//
//  LSIAgent.h
//  NOCList-ObjC
//
//  Created by John McCants on 11/15/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

@property (nonatomic) NSNumber *accessLevel;
@property (nonatomic) NSNumber *compromised;
@property (nonatomic) NSString *realName;
@property (nonatomic) NSString *coverName;

-(instancetype)initWithName: (NSString *)realName
                compromised: (BOOL *)compromised
                  coverName: (NSString *)coverName
                accessLevel: (int *)accessLevel;

-(void)sortCompromisedAgents:(NSArray *)agents;
-(void)sortCleanAgents:(NSArray *)agents;
-(void)sortHighRiskAgents:(NSArray *)agents;
-(void)sortLevels:(NSArray *)agents;

                


@end

NS_ASSUME_NONNULL_END
