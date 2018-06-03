//
//  HCDDepartment.m
//  14组合模式
//
//  Created by 黄成都 on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDHRDepartment.h"

@implementation HCDHRDepartment

-(void)add:(HCDCompany *)company{
    
}

- (void)display:(NSInteger)depth {
    NSString *seperate = @"";
    for (NSInteger i = 0; i < depth; i++) {
        seperate = [seperate stringByAppendingString:@"-"];
    }
    NSLog(@"%@%@的HR部门",seperate,self.name);
}

-(void)remove:(HCDCompany *)company{

}

-(void)lineofDuty{
    NSLog(@"%@,培训员工",self.name);
}

@end
