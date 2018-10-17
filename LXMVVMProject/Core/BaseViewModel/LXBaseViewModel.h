//
//  LXBaseViewModel.h
//  LXMVVMProject
//
//  Created by Andy on 2018/7/10.
//  Copyright © 2018年 AndyLLL. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^LXRequestSuccess)(id entity);
typedef void(^LXRequestFailure)(NSUInteger errorCode,NSString *errorMsg);

@interface LXBaseViewModel : NSObject
/**
 请求回掉的公共属性
 */
@property (nonatomic, assign, readonly) BOOL isSuccess;
@property (nonatomic, copy, readonly) NSString * message;
@property (nonatomic, copy, readonly) NSString * resultCode;

/**
 扩展字段
 */
@property (nonatomic, copy, readonly) NSString * title;

//viewModel初始化时候默认的初始化操作
- (void)setupData;

//扩展类
- (void)setupBinding;
#pragma mark - 请求数据
- (void)sendRequest:(LXRequestSuccess)successBlock failure:(LXRequestFailure)failureBlock;
@end
