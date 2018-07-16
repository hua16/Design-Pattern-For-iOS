//
//  HCDPersonBuilderDirector.h
//  8建造者模式
//
//  Created by yifan on 15/8/13.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HCDPresionBuilderProtocol.h"

@class HCDPresionBuilder;
@interface HCDPersonBuilderDirector : NSObject

- (instancetype)initWithBuilder:(HCDPresionBuilder *)builder;

- (void)buildPerson; 

@end
