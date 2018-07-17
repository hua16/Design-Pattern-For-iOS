//
//  HCDCashContext.m
//  2策略模式
//
//  Created by 黄成都 on 15/8/11.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDCashContext.h"
#import "HCDCaseReturn.h"
#import "HCDCashNormal.h"
#import "HCDCashRobate.h"

@interface HCDCashContext()

@property (nonatomic, strong) id<HCDCashProtocol> cash;

@end

@implementation HCDCashContext 

-(instancetype)initWithCashType:(HCDCashType)type{
    self = [super init];
    if (self) {
        [self cofigureWithCashType:type];
    }
    return self;
}

- (void)cofigureWithCashType:(HCDCashType)type {
    switch (type) {
        case HCDCashTypeNormal: {
            self.cash = [[HCDCashNormal alloc] init];
        }
        break;
        case HCDCashTypeRobate: {
            self.cash = [[HCDCashRobate alloc] initWithMoneyRebate:0.8];
        }
        break;
        case HCDCashTypeReturn: {
            self.cash = [[HCDCaseReturn alloc] initWithMoneyReturn:5];
        }
        break;
    }
}

- (CGFloat)getResult:(CGFloat)money {
    return [self.cash acceptCash:money];
}

@end
