//
//  LTFinery.h
//  3装饰模式
//
//  Created by lever on 2018/6/1.
//  Copyright © 2018年 黄成都. All rights reserved.
//

#import "LTPerson.h"

@interface LTFinery : LTPerson

- (void)decorate:(LTPerson *)person;

@end

@interface LTTshirts : LTFinery

@end

@interface LTBigTrouser : LTFinery

@end

@interface LTSneakers : LTFinery

@end

@interface LTLeatherShoes : LTFinery

@end

@interface LTTie : LTFinery

@end

@interface LTSuit : LTFinery

@end


