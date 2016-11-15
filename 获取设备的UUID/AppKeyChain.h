//
//  AppKeyChain.h
//  woshiPM
//
//  Created by WOSHIPM on 16/10/26.
//  Copyright © 2016年 WOSHIPM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppKeyChain : NSObject


+ (void)saveData:(id)data forKey:(NSString *)key;

+ (id)loadForKey:(NSString *)key;

+ (void)deleteKeyData:(NSString *)key;


@end
