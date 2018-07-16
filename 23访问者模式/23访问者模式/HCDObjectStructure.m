//
//  HCDObjectStructure.m
//  23访问者模式
//
//  Created by 黄成都 on 15/8/27.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDObjectStructure.h"
#import "HCDElements.h"
#import "HCDVisitors.h"

@interface HCDObjectStructure ()

@property (nonatomic, strong) NSMutableArray *elements;

@end

@implementation HCDObjectStructure

-(instancetype)init{
    self = [super init];
    if (self) {
        _elements = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)attach:(HCDElements *)element{
    [self.elements addObject:element];
}

-(void)detach:(HCDElements *)element{
    [self.elements removeObject:element];
}

-(void)accept:(HCDVisitors *)visitor{
    for (HCDElements *e in self.elements) {
        [e accept:visitor];
    }
}

@end
