//
//  LXPagingTableViewController.m
//  LXMVVMProject
//
//  Created by Andy on 2018/7/10.
//  Copyright © 2018年 AndyLLL. All rights reserved.
//

#import "LXPagingTableViewController.h"

@interface LXPagingTableViewController ()
@property (nonatomic, strong) LXPagingTableViewModel * viewModel;
@end

@implementation LXPagingTableViewController
@dynamic viewModel;

- (instancetype)initWithViewModel:(LXPagingTableViewModel *)viewModel{
    return [super initWithViewModel:viewModel];
}

- (void)setupLayout{
    [super setupLayout];
}

- (void)setupBinding{
    [super setupBinding];
}

- (void)hideLoadingViewFooter{
    if (self.viewModel.isSuccess) {
        self.hideFooterLoadingMore = self.viewModel.isNeedRefresh;
    }else{
        NSLog(@"Show error");
    }
    [self endHeaderRefresh];
    [self endFooterRefresh];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
