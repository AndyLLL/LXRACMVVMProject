//
//  LXBaseModel.m
//  LXMVVMProject
//
//  Created by Andy on 2018/7/13.
//  Copyright © 2018年 AndyLLL. All rights reserved.
//

#import "LXBaseModel.h"

@interface LXBaseModel ()
@property (nonatomic, strong) LXHttpManager * httpManager;
@end

@implementation LXBaseModel
- (LXHttpManager *)httpManager{
    if (_httpManager == nil) {
        _httpManager = [[LXHttpManager alloc]init];
    }
    return _httpManager;
}

- (RACSignal *)getRequestWithURLString:(NSString *)URLString
                  parametersDictionary:(NSDictionary *)paraterDictionary
                     parserEntityClass:(Class)parseEntityClass
{
    //根据一部分请求创建一个新的RACSignal
    @weakify(self)
    return [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
        @strongify(self);
        [self.httpManager getRequestWithUrlString:URLString parametersDictonary:paraterDictionary entityClass:parseEntityClass completeBlock:^(id data) {
            [subscriber sendNext:data];
            [subscriber sendCompleted];
        }];
        return nil;
    }];
}

@end
