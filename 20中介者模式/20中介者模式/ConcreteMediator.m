//
//  ConcreteMediator.m
//  20中介者模式
//
//  Created by huangchengdu on 17/5/22.
//  Copyright © 2017年 黄成都. All rights reserved.
//

#import "ConcreteMediator.h"
#import "ConcreteColleague1.h"
#import "ConcreteColleague2.h"

@implementation ConcreteMediator

-(void)send:(NSString *)message colleague:(Colleague *)colleague{
    if (colleague == self.colleague1) {
        [self.colleague2 notify:message];
    }else{
        [self.colleague1 notify:message];
    }
}

@end
