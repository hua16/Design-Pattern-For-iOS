//
//  HCDServiceCenter.h
//  9观察者模式
//
//  Created by xulihua on 2018/6/2.
//  Copyright © 2018年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HCDServiceCenter : NSObject

@property(nonatomic, strong, readonly) NSHashTable *responders;

- (instancetype)initWithNotifyQueue:(dispatch_queue_t)notifyQueue;

- (void)addDelegate:(id)delegate;

- (void)removeDelegate:(id)delegate;

- (void)notifyServiceDelegate:(SEL)aSelector
                      perform:(void (^)(id responder))perform;

@end
