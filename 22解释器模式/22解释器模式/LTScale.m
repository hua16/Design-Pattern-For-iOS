//
//  LTScale.m
//  22解释器模式
//
//  Created by xulihua on 2018/6/3.
//  Copyright © 2018年 黄成都. All rights reserved.
//

#import "LTScale.h"

@implementation LTScale

- (void)excute:(NSString *)key value:(CGFloat)value {
    NSString *scale = @""; 
    
    if ([key isEqualToString:@"D"]) {
        scale = @"1";
    } else if ([key isEqualToString:@"E"]) {
        scale = @"2";
        
    } else if ([key isEqualToString:@"F"]) {
        scale = @"3";
        
    } else if ([key isEqualToString:@"G"]) {
        scale = @"4";
        
    } else if ([key isEqualToString:@"A"]) {
        scale = @"5";
        
    } else if ([key isEqualToString:@"B"]) {
        scale = @"6";
        
    } else if ([key isEqualToString:@"C"]) {
        scale = @"7";
        
    } else {
        scale = @"0";
    }
    NSLog(@"scale:%@",scale);
}

@end
