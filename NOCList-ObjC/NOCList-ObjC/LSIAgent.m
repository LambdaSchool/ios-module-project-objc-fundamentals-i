//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by James McDougall on 3/3/21.
//

#import "LSIAgent.h"

@implementation LSIAgent

//MARK: - Initializer -
- (instancetype) initWithCoverName:(NSString *)coverName
                 realName:(NSString *)realName
                 accessLevel:(int)accessLevel
                 compromised:(BOOL)compromised
{
    _coverName = coverName;
    _realName = realName;
    _accessLevel = [NSNumber numberWithInt:accessLevel];
    _compromised = [NSNumber numberWithBool:compromised];
    return self;
}

//MARK: - Methods
- (void)checkForCleanAgents:(NSArray<LSIAgent*>*)agents {
    int numberOfCleanAgents = 0;
    for (LSIAgent *agent in agents) {
        if (agent.compromised == [NSNumber numberWithBool:true]) {
            numberOfCleanAgents += 1;
            NSLog(@"Found a clean agent %@", agent.coverName);
        }
    }
    NSLog(@"Number of clean agents %d", numberOfCleanAgents);
}

@end
