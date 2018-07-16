//
//  ViewController.m
//  10抽象工厂模式
//
//  Created by yifan on 15/8/14.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDFactory.h"
#import "HCDSqlserverFactory.h"
#import "HCDAccessFactory.h"
#import "HCDDepartment.h"
#import "HCDUser.h"

#import "SQLDepartment.h"
#import "SQLUser.h"

typedef id<HCDUser> HCDUser;


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    id<HCDFactory> factory0 = [[HCDSqlserverFactory alloc]init];
    id<HCDDepartment> department0 = [factory0 createDepartment];
    [department0 insertDepartment:[[SQLDepartment alloc]init]];
    [department0 getDepartment];
    
    id<HCDUser> user0 = [factory0 createUser];
    [user0 insertUser:[[SQLUser alloc] init]];
    [user0 getUser];
    
    id<HCDFactory> factory1 = [[HCDAccessFactory alloc]init];
    id<HCDDepartment> department1 = [factory1 createDepartment];
    [department1 insertDepartment:[[SQLDepartment alloc]init]];
    [department1 getDepartment];
    
    id<HCDUser> user1 = [factory1 createUser];
    [user1 insertUser:[[SQLUser alloc] init]];
    [user1 getUser];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
