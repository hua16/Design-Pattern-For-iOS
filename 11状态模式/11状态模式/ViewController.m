//
//  ViewController.m
//  11状态模式
//
//  Created by yifan on 15/8/14.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDWork.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HCDWork *work = [[HCDWork alloc]init];
    work.hour = 9;
    [work writeProgram];
    
    work.hour = 10;
    [work writeProgram];
    
    work.hour = 12;
    [work writeProgram];
    
    work.hour = 13;
    [work writeProgram];
    
    work.hour = 14;
    [work writeProgram];
    
    work.hour = 17;
    [work writeProgram];
    
    work.finished = NO;
    [work writeProgram];
    
    work.hour = 19;
    [work writeProgram];
    
    work.hour = 22;
    [work writeProgram];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
