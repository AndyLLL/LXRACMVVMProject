//
//  LXHttpManager.h
//  LXMVVMProject
//
//  Created by Andy on 2018/7/13.
//  Copyright © 2018年 AndyLLL. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^RequestFinishBlock)(id data);

@interface LXHttpManager : NSObject
/**
 网络请求类
 @param urlString URL
 @param parametrersDict 参数
 @param entityClass 请求出结果后返回的实体类
 @param completeBlock   回调Block
 */
- (void)getRequestWithUrlString:(NSString *)urlString
            parametersDictonary:(NSDictionary *)parametrersDict
                    entityClass:(Class)entityClass
                  completeBlock:(RequestFinishBlock)completeBlock;
@end
