//
//  LXBaseViewController.h
//  LXMVVMProject
//
//  Created by Andy on 2018/7/10.
//  Copyright © 2018年 AndyLLL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LXBaseViewModel.h"

@interface LXBaseViewController : UIViewController
@property (nonatomic, strong, readonly) LXBaseViewModel * viewModel;

/**
 唯一初始化方法
 @param viewModel 传入viewModel
 @return 实例化控制器对象
 */
- (instancetype)initWithViewModel:(LXBaseViewModel *)viewModel;

/**
 布局UI
 */
- (void)setupLayout;

/**
 请求网路数据 绑定数据
 */
- (void)setupBinding;

/**
 设置数据回调，点击事件处理
 */
- (void)setupData;
@end
