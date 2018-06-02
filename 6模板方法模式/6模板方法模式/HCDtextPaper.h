//
//  HCDtextPaper.h
//  6模板方法模式
//
//  Created by yifan on 15/8/12.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HCDtextPaper : NSObject

- (void)testQuestion1;

- (void)testQuestion2;

/**
 子类需要重写这个方法

 @return 结果
 */
- (NSString *)answer1;

/**
 子类需要重写这个方法
 
 @return 结果
 */
- (NSString *)answer2;

@end
