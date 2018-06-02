//
//  HCDCalculateProtocol.h
//  1简单工厂模式
//
//  Created by lever on 2018/6/1.
//  Copyright © 2018年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, HCDCalculateType) {
    HCDCalculateTypeAdd = 0,   //加
    HCDCalculateTypeMinus,     //减
    HCDCalculateTypeMultipy,   //乘
    HCDCalculateTypeDivide     //除
};

@protocol HCDCalculateProtocol <NSObject>

@optional
-(CGFloat)calculate;

@end
