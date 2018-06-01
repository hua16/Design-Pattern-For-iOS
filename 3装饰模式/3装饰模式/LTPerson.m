//
//  LTPerson.m
//  3装饰模式
//
//  Created by lever on 2018/6/1.
//  Copyright © 2018年 黄成都. All rights reserved.
//

#import "LTPerson.h"

@interface LTPerson ()

@property (nonatomic, copy) NSString *name;

@end

@implementation LTPerson

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

- (void)show {
    NSLog(@"装扮的%@",self.name);
}

@end
