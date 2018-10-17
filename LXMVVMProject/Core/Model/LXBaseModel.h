//
//  LXBaseModel.h
//  LXMVVMProject
//
//  Created by Andy on 2018/7/13.
//  Copyright © 2018年 AndyLLL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LXHttpManager.h"

@interface LXBaseModel : NSObject
- (RACSignal *)getRequestWithURLString:(NSString *)URLString
                  parametersDictionary:(NSDictionary *)paraterDictionary
                     parserEntityClass:(Class)parseEntityClass;
@end
