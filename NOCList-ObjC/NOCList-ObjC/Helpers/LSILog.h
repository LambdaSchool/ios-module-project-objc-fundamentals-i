//
//  LSILog.h
//  NOCList-ObjC
//
//  Created by Enzo Jimenez-Soto on 7/13/20.
//  Copyright © 2020 Enzo Jimenez-Soto. All rights reserved.
//

#import <Foundation/Foundation.h>

// Based on: https://stackoverflow.com/a/1354736/276626

#define USECUSTOMLOGS 1     // 0 = Off, 1 = On
#if USECUSTOMLOGS
#define NSLog LSILog
#endif

void LSILog(NSString *format, ...);
