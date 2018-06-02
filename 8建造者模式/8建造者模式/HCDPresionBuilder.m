//
//  HCDPresionBuilder.m
//  8建造者模式
//
//  Created by lever on 2018/6/2.
//  Copyright © 2018年 黄成都. All rights reserved.
//

#import "HCDPresionBuilder.h"

@interface HCDPresionBuilder()

@property (nonatomic, strong) HCDHeader *header;
@property (nonatomic, strong) HCDBody *body;
@property (nonatomic, strong) HCDLeg *leg;
@property (nonatomic, strong) HCDArm *arm;

@end

@implementation HCDPresionBuilder

- (instancetype)init {
    self = [super init];
    if (self) { 
        _header = [[HCDHeader alloc]init];
        _body = [[HCDBody alloc]init];
        _leg = [[HCDLeg alloc]init];
        _arm = [[HCDArm alloc]init];
    }
    return self;
}


- (void)buildHead {
    
}

- (void)buildBody {
    
}

- (void)buildArmLeft {
    
}

- (void)buildArmRight {
    
}

- (void)buildLegLeft {
    
}

- (void)buildLegRight {
    
}

- (void)buildPerson {
    
}


@end
