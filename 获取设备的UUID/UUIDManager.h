//
//  UUIDManager.h
//  获取设备的UUID
//
//  Created by WOSHIPM on 16/11/15.
//  Copyright © 2016年 WOSHIPM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UUIDManager : NSObject
// 获取设备唯一标识
+ (NSString *)getDeviceID;
@end
