//
//  HCDObserver.h
//  9观察者模式
//
//  Created by yifan on 15/8/13.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol HCDObserver <NSObject>

@optional
- (void)update;

@end
