//
//  LXBaseViewModel.m
//  LXMVVMProject
//
//  Created by Andy on 2018/7/10.
//  Copyright © 2018年 AndyLLL. All rights reserved.
//

#import "LXBaseViewModel.h"

@interface LXBaseViewModel ()
@property (nonatomic, assign) BOOL isSuccess;
@property (nonatomic, copy) NSString * message;
@property (nonatomic, copy) NSString * resultCode;
@property (nonatomic, copy) NSString * title;
@end

@implementation LXBaseViewModel
- (instancetype)init{
    self = [super init];
    if (self) {
        [self setupData];
    }
    return self;
}

- (void)setupData{
    _isSuccess = YES;
    _message = @"LXMVVM Project";
}

- (void)setupBinding{
    
}

- (NSString *)title{
    return nil;
}

- (void)sendRequest:(LXRequestSuccess)successBlock failure:(LXRequestFailure)failureBlock{
    //子类数据请求
}

@end
