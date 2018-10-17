//
//  LXBaseEntity.h
//  LXMVVMProject
//
//  Created by Andy on 2018/7/13.
//  Copyright © 2018年 AndyLLL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <YYModel.h>

@interface LXBaseEntity : NSObject
//字典转模型
+ (instancetype)parserEntityWithDictionary:(NSDictionary *)dictionary;
@end
