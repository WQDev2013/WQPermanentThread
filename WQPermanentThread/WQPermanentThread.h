//
//  WQPermanentThread.h
//  WQPermanentThread
//
//  Created by chenweiqiang on 2020/5/9.
//  Copyright © 2020 chenweiqiang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^WQPermanentThreadTask)(void);

@interface WQPermanentThread : NSObject
/**
 开启线程
 */
//- (void)run;

/**
 在当前子线程执行一个任务
 */
- (void)executeTask:(WQPermanentThreadTask)task;

/**
 结束线程
 */
- (void)stop;
@end

NS_ASSUME_NONNULL_END
