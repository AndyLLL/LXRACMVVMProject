//
//  LXHttpManager.m
//  LXMVVMProject
//
//  Created by Andy on 2018/7/13.
//  Copyright © 2018年 AndyLLL. All rights reserved.
//

#import "LXHttpManager.h"

@implementation LXHttpManager
- (void)getRequestWithUrlString:(NSString *)urlString
            parametersDictonary:(NSDictionary *)parametrersDict
                    entityClass:(Class)entityClass
                  completeBlock:(RequestFinishBlock)completeBlock
{
    AFHTTPSessionManager * manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json",@"text/html",@"text/json", nil];
    [manager GET:urlString parameters:parametrersDict progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        id obj = nil;
        SEL sel = NSSelectorFromString(@"parserEntityWithDictionary:");
        if ([entityClass respondsToSelector:sel]) {
            obj = [entityClass performSelector:sel withObject:responseObject];
        }
        !completeBlock ? : completeBlock(obj);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    }];
}
@end
