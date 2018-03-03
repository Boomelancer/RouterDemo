//
//  AXDRouter+JSAPI.m
//  模块化Demo
//
//  Created by Jacob on 17/3/15.
//  Copyright © 2017年 Jacob. All rights reserved.
//

#import "AXDRouter+JSAPI.h"

@implementation AXDRouter (JSAPI)

- (void)js_install {
    [AXDRouter dispatchInvokes:@"jsapi" action:@"install" error:nil];
}

@end
