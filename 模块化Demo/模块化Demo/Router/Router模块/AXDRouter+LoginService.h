//
//  AXDRouter+LoginService.h
//  JOFoundation
//
//  Created by Jacob on 17/2/23.
//  Copyright © 2017年 Jacob. All rights reserved.
//

#import "AXDRouter.h"

@interface AXDRouter (LoginService)

- (void)doLogin:(nullable void(^)(NSInteger result))callback;

- (nonnull id)doBussiness:(nullable void(^)(NSInteger result))callBack;

- (void)doBussiness;

- (void)doSomething:(nonnull NSString *)other;


@end
