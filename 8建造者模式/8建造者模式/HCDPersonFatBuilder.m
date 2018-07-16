//
//  HCDPersonFatBuilder.m
//  8建造者模式
//
//  Created by yifan on 15/8/13.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDPersonFatBuilder.h"
#import "HCDHeader.h"
#import "HCDBody.h"
#import "HCDLeg.h"
#import "HCDArm.h"
#import "HCDProduct.h"

@interface HCDPersonFatBuilder()

@property (nonatomic, strong) HCDProduct *product;

@end

@implementation HCDPersonFatBuilder

-(instancetype)init{
    self = [super init];
    if (self) {
        _product = [[HCDProduct alloc] init];
    }
    return self;
} 

- (void)buildHead {
    NSLog(@"建造胖子的头部");
    [self.product.header work];
}

- (void)buildBody {
    NSLog(@"建造胖子的身体");
    [self.product.body work];
}

- (void)buildArmLeft {
    NSLog(@"建造胖子的左手");
    [self.product.arm work];
}

- (void)buildArmRight {
    NSLog(@"建造胖子的右手");
    [self.product.arm work];
}

- (void)buildLegLeft {
    NSLog(@"建造胖子的左脚");
    [self.product.leg work];
}

- (void)buildLegRight {
    NSLog(@"建造胖子的右脚");
    [self.product.leg work];
}

- (HCDProduct *)getResult {
    return self.product;
}

@end
