//
//  LXTableViewModel.h
//  LXMVVMProject
//
//  Created by Andy on 2018/7/10.
//  Copyright © 2018年 AndyLLL. All rights reserved.
//

#import "LXBaseViewModel.h"
#import <UIKit/UIKit.h>
#import "LXTableViewCellViewModel.h"

@interface LXTableViewModel : LXBaseViewModel
/**
 通过实体组装成cellViewModel
 */
@property (nonatomic, strong, readonly) NSMutableArray * cellViewModels;

/**
 外部通过监听该字段来判断是否需要刷新tableView
 */
@property (nonatomic, assign) BOOL isNeedRefresh;

#pragma mark --- tableView的代理通过viewModel来实现
/**
 UITableView的属性 plain or group
 */
- (UITableViewStyle)tableViewStyle;

/**
 tableviewcell的点击状态
 */
- (UITableViewCellSelectionStyle)tableViewCellSelectionStyle;

/**
 返回section个数
 */
- (NSInteger)LX_numberOfSections;

/**
 对应的section返回多少Rows
 */
- (NSInteger)LX_numberOfRowInSection:(NSInteger)section;

/**
 对应section的header高度
 */
- (CGFloat)LX_heightForHeaderInSection:(NSInteger)section;

/**
 返回对应section的头部View
 */
- (UIView *)LX_viewForHeaderInSection:(NSInteger)section;

/**
 返回对应的cellViewModel给对应的cell初始化
 */
- (LXTableViewCellViewModel *)LX_cellViewModelForRowAtIndexPath:(NSIndexPath *)indexPath;

/**
 给每个viewModel里面的cellViewModel数组组装通过实体对象初始化的cellViewModel
 这个方法是默认给一个section的时候进行调用的，如果是分页的话需要再封装一层，外部进行代码的分离，然后根据
 currentPage进行数组的清空还是继续加载
 */
- (void)handleMutableArrayEntites:(NSArray *)entities cellViewModelClass:(Class)cellViewModelClass;
@end
