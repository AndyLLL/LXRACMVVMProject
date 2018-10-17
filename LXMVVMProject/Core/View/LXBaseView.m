//
//  LXBaseView.m
//  LXMVVMProject
//
//  Created by Andy on 2018/7/10.
//  Copyright © 2018年 AndyLLL. All rights reserved.
//

#import "LXBaseView.h"

@interface LXBaseView ()
@property (nonatomic, strong) LXBaseViewModel * viewModel;
@end

@implementation LXBaseView

- (instancetype)initWithFrame:(CGRect)frame viewModel:(LXBaseViewModel *)viewModel{
    self = [super initWithFrame:frame];
    if (self) {
        _viewModel = viewModel;
        [self setupLayout];
        [self setupBinding];
        [self setupData];
    }
    return self;
}

- (void)setupLayout{};
- (void)setupData{};
- (void)setupBinding{};

@end
