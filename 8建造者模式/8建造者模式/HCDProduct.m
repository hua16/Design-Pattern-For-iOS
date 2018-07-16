//
//  HCDProduct.m
//  8建造者模式
//
//  Created by lever on 2018/7/13.
//  Copyright © 2018年 黄成都. All rights reserved.
//

#import "HCDProduct.h"

@interface HCDProduct ()

@property (nonatomic, strong) HCDHeader *header;
@property (nonatomic, strong) HCDBody *body;
@property (nonatomic, strong) HCDLeg *leg;
@property (nonatomic, strong) HCDArm *arm;

@end

@implementation HCDProduct

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

@end
