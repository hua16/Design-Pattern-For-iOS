//
//  LTFinery.m
//  3装饰模式
//
//  Created by lever on 2018/6/1.
//  Copyright © 2018年 黄成都. All rights reserved.
//

#import "LTFinery.h"

@interface LTFinery ()

@property (nonatomic, strong) LTPerson *person;

@end

@implementation LTFinery

- (void)decorate:(LTPerson *)person {
    self.person = person;
}

- (void)show {
    if(self.person) {
        [self.person show];
    }
}

@end

@implementation LTTshirts

- (void)show {
    NSLog(@"大T恤");
    [super show];
}

@end

@implementation LTBigTrouser

- (void)show {
    NSLog(@"垮裤");
    [super show];
}

@end

@implementation LTSneakers

- (void)show {
    NSLog(@"破球鞋");
    [super show];
}

@end

@implementation LTLeatherShoes

- (void)show {
    NSLog(@"皮鞋");
    [super show];
}

@end

@implementation LTTie

- (void)show {
    NSLog(@"领带");
    [super show];
}

@end

@implementation LTSuit

- (void)show {
    NSLog(@"西装");
    [super show];
}

@end

