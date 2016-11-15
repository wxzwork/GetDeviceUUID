//
//  UUIDManager.m
//  获取设备的UUID
//
//  Created by WOSHIPM on 16/11/15.
//  Copyright © 2016年 WOSHIPM. All rights reserved.
//

#import "UUIDManager.h"
#import "AppKeyChain.h"
@implementation UUIDManager
+ (NSString *)getDeviceID {
    // 读取keyChain存储的UUID
    NSString * strUUID = (NSString *)[AppKeyChain loadForKey: @"uuid"];
    // 首次运行生成一个UUID并用keyChain存储
    if ([strUUID isEqualToString: @""] || !strUUID) {
        // 生成uuid
        CFUUIDRef uuidRef = CFUUIDCreate(kCFAllocatorDefault);
        strUUID = (NSString *)CFBridgingRelease(CFUUIDCreateString (kCFAllocatorDefault,uuidRef));
        // 将该uuid用keychain存储
        [AppKeyChain saveData: strUUID forKey: @"uuid"];
    }
    return strUUID;
}
@end
