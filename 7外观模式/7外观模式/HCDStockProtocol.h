//
//  HCDStockProtocol.h
//  7外观模式
//
//  Created by lever on 2018/6/2.
//  Copyright © 2018年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol HCDStockProtocol <NSObject>

/**
 买入
 */
-(void)buy;

/**
 卖出
 */
-(void)sell;

@end
