//
//  HCDCalcuteFactory.m
//  1简单工厂模式
//
//  Created by 黄成都 on 15/8/10.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDCalcuteFactory.h"
#import "HCDCalculateAdd.h"
#import "HCDCalculateDivide.h"
#import "HCDCalculateMinus.h"
#import "HCDCalcuteMultiply.h"

@implementation HCDCalcuteFactory

+(id<HCDCalculateProtocol>)createCalcute:(NSString *)calculatetype {
    
    NSArray *calculateArray = @[@"+",@"-",@"*",@"/"];
    
    if (![calculateArray containsObject:calculatetype]) {
        return nil;
    }
    HCDCalculateType calType = [calculateArray indexOfObject:calculatetype];
    
    
    switch (calType) {
        case HCDCalculateTypeAdd:
            return [[HCDCalculateAdd alloc]init];
            break;
        case HCDCalculateTypeMinus:
            return [[HCDCalculateMinus alloc]init];
            break;
        case HCDCalculateTypeMultipy:
            return [[HCDCalcuteMultiply alloc]init];
        case HCDCalculateTypeDivide:
            return [[HCDCalculateDivide alloc]init];
    }
}
@end
