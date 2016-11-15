//
//  ViewController.m
//  获取设备的UUID
//
//  Created by WOSHIPM on 16/11/11.
//  Copyright © 2016年 WOSHIPM. All rights reserved.
//

#import "ViewController.h"
#import "UUIDManager.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *deviceUUid  = [UUIDManager getDeviceID];
 
    NSLog(@"获取设备的UUID：%@",deviceUUid);
  
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
