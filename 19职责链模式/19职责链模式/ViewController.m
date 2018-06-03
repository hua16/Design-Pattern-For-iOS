//
//  ViewController.m
//  19职责链模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDMnager.h"
#import "HCDCommonManager.h"
#import "HCDMajorManager.h"
#import "HCDGenaralManager.h"
#import "HCDReuquest.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HCDCommonManager *jinli = [[HCDCommonManager alloc]initWithName:@"经理"];
    HCDMajorManager *zongjian = [[HCDMajorManager alloc]initWithName:@"总监"];
    HCDGenaralManager *zongjinli = [[HCDGenaralManager alloc]initWithName:@"总经理"];
    jinli.superior = zongjian;
    zongjian.superior = zongjinli;
    
    HCDReuquest *request = [[HCDReuquest alloc] init];
    request.requestType = @"请假";
    request.requestContent = @"小菜请假";
    request.number = 1;
    [jinli dealRequest:request];
    
    HCDReuquest *request1 = [[HCDReuquest alloc] init];
    request1.requestType = @"请假";
    request1.requestContent = @"小菜请假";
    request1.number = 4;
    [jinli dealRequest:request1];
    
    HCDReuquest *request2 = [[HCDReuquest alloc] init];
    request2.requestType = @"加薪";
    request2.requestContent = @"小菜请求加薪";
    request2.number = 500;
    [jinli dealRequest:request2];
    
    HCDReuquest *request4 = [[HCDReuquest alloc] init];
    request4.requestType = @"加薪";
    request4.requestContent = @"小菜请求加薪";
    request4.number = 1000;
    [jinli dealRequest:request4];
} 

@end
