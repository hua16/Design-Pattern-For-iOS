//
//  ViewController.m
//  2策略模式
//
//  Created by 黄成都 on 15/8/11.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDCashContext.h"
#import "HCDCashNormal.h"
#import "HCDCashRobate.h"
#import "HCDCaseReturn.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HCDCashContext *context = [[HCDCashContext alloc] initWithCashType:HCDCashTypeNormal];
    NSLog(@"结果是%f",[context getResult:100]);

    HCDCashContext *contextReturn = [[HCDCashContext alloc] initWithCashType:HCDCashTypeReturn];
    NSLog(@"结果是%f",[contextReturn getResult:100]);
    
    HCDCashContext *contextRobate = [[HCDCashContext alloc] initWithCashType:HCDCashTypeRobate];
    NSLog(@"结果是%f",[contextRobate getResult:100]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
