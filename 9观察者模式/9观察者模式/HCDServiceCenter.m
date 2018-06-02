//
//  HCDServiceCenter.m
//  9观察者模式
//
//  Created by xulihua on 2018/6/2.
//  Copyright © 2018年 黄成都. All rights reserved.
//

#import "HCDServiceCenter.h"


#define LOCK(...) dispatch_semaphore_wait(_lock, DISPATCH_TIME_FOREVER); \
__VA_ARGS__; \
dispatch_semaphore_signal(_lock);

@interface HCDServiceCenter()

@property(nonatomic, strong) dispatch_queue_t notifyQueue;

@property(nonatomic, strong) NSHashTable *responders;

@end

@implementation HCDServiceCenter {
    dispatch_semaphore_t _lock;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.responders = [NSHashTable weakObjectsHashTable];
        self.notifyQueue = dispatch_get_main_queue();
        _lock = dispatch_semaphore_create(1);
    }
    return self;
}

- (instancetype)initWithNotifyQueue:(dispatch_queue_t)notifyQueue {
    self = [super init];
    if (self) {
        self.responders = [NSHashTable weakObjectsHashTable];
        self.notifyQueue = notifyQueue;
    }
    return self;
}

- (void)addDelegate:(id)delegate { 
    LOCK([self.responders addObject:delegate]);
}

- (void)removeDelegate:(id)delegate {
    LOCK([self.responders removeObject:delegate]); 
}

- (void)notifyServiceDelegate:(SEL)aSelector
                      perform:(void (^)(id responder))perform {
    dispatch_async(self.notifyQueue, ^{
        NSArray *responders = self.responders.allObjects;
        for (id responder in responders) {
            if ([responder respondsToSelector:aSelector]) {
                @try {
                    perform(responder);
                }
                @catch (NSException *exception) {
                    NSLog(@"catch notifyServiceDelegate exception: %@", exception);
                }
            }
        }
    });
}

@end
