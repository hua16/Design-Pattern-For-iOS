//
//  HCDPersonThinBuilder.m
//  8建造者模式
//
//  Created by yifan on 15/8/13.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDPersonThinBuilder.h"
#import "HCDProduct.h"

@interface HCDPersonThinBuilder ()

@property (nonatomic, strong) HCDProduct *product;

@end

@implementation HCDPersonThinBuilder

-(instancetype)init{
    self = [super init];
    if (self) {
        _product = [[HCDProduct alloc] init];
    }
    return self;
}
 
- (void)buildHead {
    NSLog(@"建造瘦子的头部");
    [self.product.header work];
}

- (void)buildBody {
    NSLog(@"建造瘦子的身体");
    [self.product.body work];
}

- (void)buildArmLeft {
    NSLog(@"建造瘦子的左手");
    [self.product.arm work];
}

- (void)buildArmRight {
    NSLog(@"建造瘦子的右手");
    [self.product.arm work];
}

- (void)buildLegLeft {
    NSLog(@"建造瘦子的左脚");
    [self.product.leg work];
}

- (void)buildLegRight {
    NSLog(@"建造瘦子的右脚");
    [self.product.leg work];
}

- (HCDProduct *)getResult {
    return self.product;
}

@end
