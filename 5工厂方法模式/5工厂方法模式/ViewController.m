//
//  ViewController.m
//  5工厂方法模式
//
//  Created by yifan on 15/8/12.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDCalculate.h"
#import "HCDfactoryAdd.h"
#import "HCDfactoryMinus.h"
#import "HCDfactoryMultiply.h"
#import "HCDfactoryDivide.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HCDfactory *addFactory = [[HCDfactoryAdd alloc]init];
    HCDCalculate *addCalculate = [addFactory createFactory];
    addCalculate.numberA = 10;
    addCalculate.numberB = 15;
    NSLog(@"结果是%f\n",[addCalculate calculate]);
    
    HCDfactory *minusFactory = [[HCDfactoryMinus alloc]init];
    HCDCalculate *minusCalculate = [minusFactory createFactory];
    minusCalculate.numberA = 10;
    minusCalculate.numberB = 15;
    NSLog(@"结果是%f\n",[minusCalculate calculate]);
    
    HCDfactory *multiplyFactory = [[HCDfactoryMultiply alloc]init];
    HCDCalculate *multiplyCalculate = [multiplyFactory createFactory];
    multiplyCalculate.numberA = 10;
    multiplyCalculate.numberB = 15;
    NSLog(@"结果是%f\n",[multiplyCalculate calculate]);
    
    HCDfactory *divideFactory = [[HCDfactoryDivide alloc]init];
    HCDCalculate *divideCalculate = [divideFactory createFactory];
    divideCalculate.numberA = 10;
    divideCalculate.numberB = 15;
    NSLog(@"结果是%f\n",[divideCalculate calculate]);
    
    
}


@end
