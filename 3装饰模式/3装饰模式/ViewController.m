//
//  ViewController.m
//  3装饰模式
//
//  Created by yifan on 15/8/12.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "LTPerson.h"
#import "LTFinery.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LTPerson *xc = [[LTPerson alloc] initWithName:@"小菜"];
    
    NSLog(@"\n第一种装扮");
    LTSneakers *sneaker = [[LTSneakers alloc] init];
    LTBigTrouser *bigTrouser = [[LTBigTrouser alloc] init];
    LTTshirts *tshirts = [[LTTshirts alloc] init];
    
    [sneaker decorate:xc];
    [bigTrouser decorate:sneaker];
    [tshirts decorate:bigTrouser];
    [tshirts show];
    
    NSLog(@"\n第二种装扮");
    LTLeatherShoes *leatherShoes = [[LTLeatherShoes alloc] init];
    LTTie *tie = [[LTTie alloc] init];
    LTSuit *suit = [[LTSuit alloc] init];
    
    [leatherShoes decorate:xc];
    [tie decorate:leatherShoes];
    [suit decorate:tie];
    [suit show];
}

@end

