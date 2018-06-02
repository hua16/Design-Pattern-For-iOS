//
//  HCDPersonBuilderDirector.m
//  8建造者模式
//
//  Created by yifan on 15/8/13.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDPersonBuilderDirector.h"
#import "HCDPersonFatBuilder.h"
#import "HCDPersonThinBuilder.h"
#import "HCDPresionBuilder.h"

@interface HCDPersonBuilderDirector ()

@property (nonatomic, strong) HCDPresionBuilder *builder;

@end

@implementation HCDPersonBuilderDirector

- (instancetype)initWithBuilder:(HCDPresionBuilder *)builder {
    self = [super init];
    if (self) {
        self.builder = builder;
    }
    return self;
}

- (void)buildPerson {
    NSLog(@"===============director指挥builder开始建造====================");
    [self.builder buildHead];
    [self.builder buildBody];
    [self.builder buildArmLeft];
    [self.builder buildArmRight];
    [self.builder buildLegLeft];
    [self.builder buildLegRight];
}

@end
