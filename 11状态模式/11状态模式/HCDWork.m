//
//  HCDWork.m
//  11状态模式
//
//  Created by yifan on 15/8/14.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDWork.h"
#import "HCDForenoonState.h"

@interface HCDWork()

@property(nonatomic, strong) HCDState *state;

@end

@implementation HCDWork

- (instancetype)init{
    self = [super init];
    if (self) {
        self.state = [[HCDForenoonState alloc]init];
    }
    return self;
}

- (void)writeProgram {
    [self.state writeProgram:self];
}

- (void)changeState:(HCDState *)state {
    self.state = state;
}

@end
