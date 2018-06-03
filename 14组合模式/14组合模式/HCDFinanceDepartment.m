//
//  HCDFinanceDepartment.m
//  14组合模式
//
//  Created by 黄成都 on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDFinanceDepartment.h"

@implementation HCDFinanceDepartment

-(void)add:(HCDCompany *)company{
    
}

-(void)remove:(HCDCompany *)company{
    
}

- (void)display:(NSInteger)depth {
    NSString *seperate = @"";
    for (NSInteger i = 0; i < depth; i++) {
        seperate = [seperate stringByAppendingString:@"-"];
    }
    NSLog(@"%@%@的财务部门",seperate,self.name);
}

-(void)lineofDuty{
    NSLog(@"%@,给员工发钱",self.name);
}

@end
