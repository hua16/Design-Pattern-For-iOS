//
//  HCDGenaralManager.m
//  19职责链模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDGenaralManager.h"
#import "HCDReuquest.h"

@implementation HCDGenaralManager

-(void)dealRequest:(HCDReuquest *)request{
    if ([request.requestType isEqualToString:@"请假"]) {
        NSLog(@"%@:%@ 数量%ld 被批准",self.name,request.requestType,request.number);
    } else if ([request.requestType isEqualToString:@"加薪"]){
        if (request.number <= 500) {
            NSLog(@"%@:%@ 数量%ld 被批准",self.name,request.requestType,request.number);
        } else {
            NSLog(@"%@:%@ 数量%ld 再说吧",self.name,request.requestType,request.number);
        }
    } else {
        
    }
}

@end
