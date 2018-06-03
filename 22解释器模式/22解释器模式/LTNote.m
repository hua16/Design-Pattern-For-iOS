//
//  LTNote.m
//  22解释器模式
//
//  Created by xulihua on 2018/6/3.
//  Copyright © 2018年 黄成都. All rights reserved.
//

#import "LTNote.h"

@implementation LTNote

- (void)excute:(NSString *)key value:(CGFloat)value {
    NSString *note = @"";
    
    if ([key isEqualToString:@"D"]) {
        note = @"1";
    } else if ([key isEqualToString:@"E"]) {
        note = @"2";
        
    } else if ([key isEqualToString:@"F"]) {
        note = @"3";
        
    } else if ([key isEqualToString:@"G"]) {
        note = @"4";
        
    } else if ([key isEqualToString:@"A"]) {
        note = @"5";
        
    } else if ([key isEqualToString:@"B"]) {
        note = @"6";
        
    } else if ([key isEqualToString:@"C"]) {
        note = @"7";
        
    } else {
        note = @"0";
    }
    NSLog(@"note:%@",note);
}

@end
