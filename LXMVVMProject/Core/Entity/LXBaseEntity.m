//
//  LXBaseEntity.m
//  LXMVVMProject
//
//  Created by Andy on 2018/7/13.
//  Copyright © 2018年 AndyLLL. All rights reserved.
//

#import "LXBaseEntity.h"

@implementation LXBaseEntity
+ (instancetype)parserEntityWithDictionary:(NSDictionary *)dictionary{
    if (!dictionary || ![dictionary isKindOfClass:[NSDictionary class]]) {
        return nil;
    }
    return [self yy_modelWithDictionary:dictionary];
}
@end
