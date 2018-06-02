//
//  ViewController.m
//  8建造者模式
//
//  Created by yifan on 15/8/13.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDPersonBuilderDirector.h"
#import "HCDPersonFatBuilder.h"
#import "HCDPersonThinBuilder.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)buildFat:(id)sender {
    HCDPersonFatBuilder *builder = [[HCDPersonFatBuilder alloc]init];
    HCDPersonBuilderDirector *director = [[HCDPersonBuilderDirector alloc] initWithBuilder:builder];
    [director buildPerson];
}

- (IBAction)buildThin:(id)sender {
    HCDPersonThinBuilder *builder = [[HCDPersonThinBuilder alloc]init];
    HCDPersonBuilderDirector *director = [[HCDPersonBuilderDirector alloc] initWithBuilder:builder];
    [director buildPerson];
}

@end
