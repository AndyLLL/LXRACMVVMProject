//
//  LXPagingTableViewModel.m
//  LXMVVMProject
//
//  Created by Andy on 2018/7/10.
//  Copyright © 2018年 AndyLLL. All rights reserved.
//

#import "LXPagingTableViewModel.h"

@interface LXPagingTableViewModel ()
@property (nonatomic, strong) NSNumber * currentPage; //当前页面
@property (nonatomic, strong) NSString * currentMaxTime; //加载下一页需要的字段
@property (nonatomic, assign) BOOL isNeedHiddenFooter; //根据totalCount判断是否需要进行footer的隐藏
@end

@implementation LXPagingTableViewModel
- (void)setupData{
    [super setupData];
    
}
/**
 * currentPage = 1 ,从第一页请求
 */
- (void)initRequestPullPage{
    self.currentPage = @(1);
    self.currentMaxTime = @"";
}

- (void)handlePagingEntities:(NSArray *)entities totalCount:(NSNumber *)totalCount cellViewModelClass:(Class)cellViewModelClass maxTime:(NSString *)maxTime{
    if ([self.currentPage isEqualToNumber:@1]) {
        [self.cellViewModels removeAllObjects];
    }
    [self handleMutableArrayEntites:entities cellViewModelClass:cellViewModelClass];
    self.isNeedHiddenFooter = !(totalCount.integerValue >= entities.count);
    self.currentPage = @(self.currentPage.integerValue + 1);
    self.currentMaxTime = maxTime;
}

@end
