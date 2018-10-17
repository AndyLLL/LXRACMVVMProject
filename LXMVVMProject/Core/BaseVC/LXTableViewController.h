//
//  LXTableViewController.h
//  LXMVVMProject
//
//  Created by Andy on 2018/7/10.
//  Copyright © 2018年 AndyLLL. All rights reserved.
//

#import "LXBaseViewController.h"
#import "LXTableViewModel.h"

@interface LXTableViewController : LXBaseViewController
//每个vc对应的viewmodel
@property (nonatomic, strong, readonly) LXTableViewModel * viewModel;
@property (nonatomic, strong, readonly) UITableView * tableView;

@property (nonatomic, assign, readonly) BOOL isRefresh;

@property (nonatomic, assign) BOOL hideFooterLoadingMore;

- (void)endHeaderRefresh;
- (void)endFooterRefresh;

/**
 子类实现，进行数据的请求 binding
 */
- (void)pullTableViewRequestData:(BOOL)isRefresh;

- (Class)cellClassForRowAtIndexPath:(NSIndexPath *)indexPath;
@end
