//
//  HCDReuquest.h
//  19职责链模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HCDReuquest : NSObject

/**
 请求类型
 */
@property (nonatomic, copy) NSString *requestType;

/**
 请求内容
 */
@property (nonatomic, copy) NSString *requestContent;

/**
 请求的数量
 */
@property(nonatomic, assign) NSInteger number;

@end
