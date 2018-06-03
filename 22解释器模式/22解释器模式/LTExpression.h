//
//  LTExpression.h
//  22解释器模式
//
//  Created by xulihua on 2018/6/3.
//  Copyright © 2018年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class LTPlayContext;
@interface LTExpression : NSObject

- (void)interpret:(LTPlayContext *)context;

- (void)excute:(NSString *)key value:(CGFloat)value;

@end
