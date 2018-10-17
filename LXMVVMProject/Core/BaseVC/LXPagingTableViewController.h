//
//  LXPagingTableViewController.h
//  LXMVVMProject
//
//  Created by Andy on 2018/7/10.
//  Copyright © 2018年 AndyLLL. All rights reserved.
//

#import "LXTableViewController.h"
#import "LXPagingTableViewModel.h"

@interface LXPagingTableViewController : LXTableViewController
@property (nonatomic, strong, readonly) LXPagingTableViewModel * viewModel;

- (instancetype)initWithViewModel:(LXPagingTableViewModel *)viewModel;

- (void)hideLoadingViewFooter;
@end
