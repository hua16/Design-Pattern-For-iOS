//
//  HCDPresionBuilderProtocol.h
//  8建造者模式
//
//  Created by lever on 2018/6/2.
//  Copyright © 2018年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HCDProduct.h"

typedef  NS_ENUM(NSUInteger,HCDBuildOption){
    HCDBuildOptionFat = 0,  //胖的人
    HCDBuildOptionThin      //瘦的人
};

@protocol HCDPresionBuilderProtocol <NSObject>

- (void)buildHead;
- (void)buildBody;
- (void)buildArmLeft;
- (void)buildArmRight;
- (void)buildLegLeft;
- (void)buildLegRight;

- (HCDProduct *)getResult;

@end 
