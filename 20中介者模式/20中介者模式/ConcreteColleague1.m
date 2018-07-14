//
//  ConcreteColleague1.m
//  20中介者模式
//
//  Created by huangchengdu on 17/5/22.
//  Copyright © 2017年 黄成都. All rights reserved.
//

#import "ConcreteColleague1.h"
#import "Mediator.h"

@implementation ConcreteColleague1

-(instancetype)initWithMediator:(Mediator *)mediator{
    self = [super init];
    if (self) {
        self.mediator = mediator;
    }
    return self;
}

-(void)send:(NSString *)message{
    NSLog(@"同事1发送了信息");
    [self.mediator send:message colleague:self];
}

-(void)notify:(NSString *)message{
    NSLog(@"%@%@",@"同事1得到消息:", message);
}

@end
