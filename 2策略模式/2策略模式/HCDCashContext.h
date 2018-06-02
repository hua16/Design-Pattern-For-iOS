//
//  HCDCashContext.h
//  2策略模式
//
//  Created by 黄成都 on 15/8/11.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HCDCashProtocol.h"

typedef NS_ENUM(NSInteger, HCDCashType){
    HCDCashTypeNormal = 0,
    HCDCashTypeRobate,
    HCDCashTypeReturn
};

@interface HCDCashContext : NSObject 

-(instancetype)initWithCashType:(HCDCashType)type;

-(CGFloat)getResult:(CGFloat)money;

@end
