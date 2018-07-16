//
//  HCDProduct.h
//  8建造者模式
//
//  Created by lever on 2018/7/13.
//  Copyright © 2018年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HCDHeader.h"
#import "HCDBody.h"
#import "HCDLeg.h"
#import "HCDArm.h"

@interface HCDProduct : NSObject

@property(nonatomic, strong, readonly)HCDHeader *header;
@property(nonatomic, strong, readonly)HCDBody *body;
@property(nonatomic, strong, readonly)HCDLeg *leg;
@property(nonatomic, strong, readonly)HCDArm *arm;

@end
