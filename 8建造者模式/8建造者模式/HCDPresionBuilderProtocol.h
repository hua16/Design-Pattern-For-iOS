//
//  HCDPresionBuilderProtocol.h
//  8建造者模式
//
//  Created by lever on 2018/6/2.
//  Copyright © 2018年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef  NS_ENUM(NSUInteger,HCDBuildOption){
    HCDBuildOptionFat = 0,
    HCDBuildOptionThin
};
@protocol HCDPresionBuilderProtocol <NSObject>

- (void)buildHead;
- (void)buildBody;
- (void)buildArmLeft;
- (void)buildArmRight;
- (void)buildLegLeft;
- (void)buildLegRight;
- (void)buildPerson;

@end 
