//
//  HCDCompany.h
//  14组合模式
//
//  Created by xulihua on 2018/6/3.
//  Copyright © 2018年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HCDCompany : NSObject

@property (nonatomic,copy) NSString *name;

- (instancetype)initWithName:(NSString *)name;

-(void)add:(HCDCompany *)company;

-(void)remove:(HCDCompany *)company;

-(void)display:(NSInteger)depth;

-(void)lineofDuty;

@end
