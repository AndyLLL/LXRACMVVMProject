//
//  LXBaseTableViewCell.h
//  LXMVVMProject
//
//  Created by Andy on 2018/7/10.
//  Copyright © 2018年 AndyLLL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LXTableViewCellViewModel.h"

@interface LXBaseTableViewCell : UITableViewCell
@property (nonatomic, strong, readonly) LXTableViewCellViewModel * viewModel;

/**
 cell的初始化方法
 通过cellViewModel来创建一个cell 调用setupdata来绑定数据
 @param tableView tableview
 @param viewModel cellViewModel
 @return cell
 */
+ (instancetype)cellForTableView:(UITableView *)tableView viewModel:(LXTableViewCellViewModel *)viewModel;

- (void)setupLayout;
- (void)setupBinding;
- (void)setupData;

//用来计算高度
+ (NSNumber *)calculateRowHeightWithViewModel:(LXTableViewCellViewModel *)viewmodel;
@end
