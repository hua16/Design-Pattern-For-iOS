//
//  LTExpression.m
//  22解释器模式
//
//  Created by xulihua on 2018/6/3.
//  Copyright © 2018年 黄成都. All rights reserved.
//

#import "LTExpression.h"
#import "LTPlayContext.h"

@implementation LTExpression


//O 1 D 2
- (void)interpret:(LTPlayContext *)context {
    if (context.playText.length == 0) {
        return;
    }
    context.playText = [context.playText stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    if (context.playText.length < 2) {
        return;
    }
    
    NSString *keyValue = [context.playText substringWithRange:NSMakeRange(0, 2)];
    
    
    NSString *playKey = [keyValue substringWithRange:NSMakeRange(0, 1)];
    NSString *playValue = [keyValue substringWithRange:NSMakeRange(0, 1)]; 
    
}

- (void)excute:(NSString *)key value:(CGFloat)value {
    
}

@end
