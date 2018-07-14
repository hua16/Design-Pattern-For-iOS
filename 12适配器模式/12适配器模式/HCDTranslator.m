//
//  HCDTranslator.m
//  12适配器模式
//
//  Created by 黄成都 on 15/8/14.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDTranslator.h"
#import "HCDForeignCenter.h"

@interface HCDTranslator ()

@property(nonatomic, strong) HCDForeignCenter *foreigncenter;

@end

@implementation HCDTranslator

-(instancetype)initWithForeigncenter:(HCDForeignCenter *)foreigncenter {
    self = [super init];
    if (self) {
        _foreigncenter = foreigncenter;
    }
    return self;
} 

-(void)defense{
    [self.foreigncenter foreignDefent];
}

-(void)attack{
    [self.foreigncenter foreignAttact];
}

@end
