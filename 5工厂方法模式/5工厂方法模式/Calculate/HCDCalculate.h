//
//  HCDCalculateProtecal.h
//  1简单工厂模式
//
//  Created by 黄成都 on 15/8/10.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "HCDCalculateProtocol.h"

@interface HCDCalculate : NSObject <HCDCalculateProtocol>

@property(nonatomic, assign) CGFloat numberA;
@property(nonatomic, assign) CGFloat numberB;

@end
