//
//  HCDConcreteCompany.m
//  14组合模式
//
//  Created by 黄成都 on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDConcreteCompany.h"

@interface HCDConcreteCompany ()

@property (nonatomic, strong) NSMutableArray *childList;

@end

@implementation HCDConcreteCompany

- (instancetype)initWithName:(NSString *)name{
    self = [super initWithName:name];
    if (self) { 
        _childList = [NSMutableArray array];
    }
    return self;
}

- (void)add:(HCDCompany *)company{
    [self.childList addObject:company];
}

- (void)remove:(HCDCompany *)company{
    [self.childList removeObject:company];
}

- (void)display:(NSInteger)depth {
    NSString *seperate = @"";
    for (NSInteger i = 0; i < depth; i++) {
        seperate = [seperate stringByAppendingString:@"-"];
    }
    NSLog(@"%@%@的子公司",seperate,self.name);
    for (HCDCompany * company in self.childList) {
        [company display:depth + 2];
    }
}

- (void)lineofDuty{
    NSLog(@"%@的子公司的职责",self.name);
    for (HCDCompany * company in self.childList) {
        [company lineofDuty];
    }
}

@end
