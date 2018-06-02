//
//  ViewController.m
//  9观察者模式
//
//  Created by yifan on 15/8/13.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDObserver.h"
#import "HCDNBAObserver.h"
#import "HCDStockObserver.h"
#import "HCDGameObserver.h"

#import "HCDServiceCenter.h"

@interface ViewController ()

@property (nonatomic, strong) HCDNBAObserver *nbaobserver;
@property (nonatomic, strong) HCDStockObserver *stockobserver;
@property (nonatomic, strong) HCDGameObserver *gameObserver;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HCDServiceCenter *serviceCenter = [[HCDServiceCenter alloc] init];
    
    [serviceCenter addDelegate:self.nbaobserver];
    [serviceCenter addDelegate:self.stockobserver];
    [serviceCenter addDelegate:self.gameObserver];
    
    NSLog(@"秘书通知：老板回来了，大家赶紧撤"); 
    [serviceCenter notifyServiceDelegate:@selector(update)
                                 perform:^(id responder) {
                                     [responder update];
    }];
}

#pragma mark - getter & setter

-(HCDNBAObserver *)nbaobserver {
    if (!_nbaobserver) {
        _nbaobserver = [[HCDNBAObserver alloc] init];
    }
    return _nbaobserver;
}

-(HCDStockObserver *)stockobserver {
    if (!_stockobserver) {
      _stockobserver = [[HCDStockObserver alloc] init];
    }
    return _stockobserver;
}

-(HCDGameObserver *)gameObserver {
    if (!_gameObserver) {
        _gameObserver = [[HCDGameObserver alloc] init];
    }
    return _gameObserver;
}

@end
