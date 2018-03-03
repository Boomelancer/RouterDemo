
//
//  JSSuperPlugin.m
//  JOFoundation
//
//  Created by Jacob on 16/11/9.
//  Copyright © 2016年 Jacob. All rights reserved.
//

#import "JSSuperPlugin.h"
#import "NSObject+XPSuperInvoker.h"
#import "JSResult.h"
@implementation JSSuperPlugin

- (void)executeJSCall:(NSString *)method params:(NSDictionary *)params jsCallback:(NSString *)jsCallback completion:(void (^)(NSString *, JSResult *))completion {
    if (completion) {
        SEL actionSelector = NSSelectorFromString([NSString stringWithFormat:@"%@:jscallback:completion:",method]);
        if (![self respondsToSelector:actionSelector]) {
              completion(jsCallback, [JSResult resultWithError:ERR_CODE_METHOD_NOT_EXISTS errMessage:ERR_INFO_METHOD_NOT_EXISTS]);
        } else {
        [self invoke:actionSelector error:nil, params, jsCallback, completion];
        }
    }
}

@end
