//
//  HCDProtocol.h
//  11状态模式
//
//  Created by xulihua on 2018/6/2.
//  Copyright © 2018年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>

@class HCDWork;
@protocol HCDProtocol <NSObject>

@optional
- (void)writeProgram:(HCDWork *)work;

@end

