//
//  NSDictionary+Extension.h
//  模块化Demo
//
//  Created by Jacob on 17/3/14.
//  Copyright © 2017年 Jacob. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Extension)

- (NSString *)toJson;

- (BOOL)contains:(nonnull id)key;

@end
