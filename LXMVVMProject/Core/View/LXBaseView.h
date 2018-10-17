//
//  LXBaseView.h
//  LXMVVMProject
//
//  Created by Andy on 2018/7/10.
//  Copyright © 2018年 AndyLLL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LXBaseViewModel.h"

@interface LXBaseView : UIView
@property (nonatomic, strong, readonly) LXBaseViewModel * viewModel;

- (instancetype)initWithFrame:(CGRect)frame viewModel:(LXBaseViewModel *)viewModel;

- (void)setupLayout;
- (void)setupBinding;
- (void)setupData;

@end
