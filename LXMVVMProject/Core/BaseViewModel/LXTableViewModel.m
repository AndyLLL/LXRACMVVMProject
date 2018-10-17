//
//  LXTableViewModel.m
//  LXMVVMProject
//
//  Created by Andy on 2018/7/10.
//  Copyright © 2018年 AndyLLL. All rights reserved.
//

#import "LXTableViewModel.h"

@interface LXTableViewModel ()
@property (nonatomic, strong) NSMutableArray * cellViewModels;
@end

@implementation LXTableViewModel
- (UITableViewStyle)tableViewStyle{
    return UITableViewStylePlain;
}

- (UITableViewCellSelectionStyle)tableViewCellSelectionStyle{
    return UITableViewCellSelectionStyleNone;
}

- (void)handleMutableArrayEntites:(NSArray *)entities cellViewModelClass:(Class)cellViewModelClass{
    NSMutableArray * cellViewModels = [[NSMutableArray alloc]init];
    [entities enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [cellViewModels addObject:[[cellViewModelClass alloc]initWithEntity:obj]];
    }];
    [self.cellViewModels addObjectsFromArray:cellViewModels];
}

/**
 调用父类的方法
 */
- (void)setupData{
    [self setupData];
}

#pragma mark --- tableView的代理方法实现
//默认是一个section
- (NSInteger)LX_numberOfSections{
    return 1;
}

/**
 子类必须实现 (每个section多少rows）
 */
- (NSInteger)LX_numberOfRowInSection:(NSInteger)section{
    @throw [NSException exceptionWithName:@"抽象方法未实现" reason:[NSString stringWithFormat:@"%@ 必须实现抽象方法 %@",[self class],NSStringFromSelector(_cmd)] userInfo:nil];
}

/**
 headerView的默认是没有的
 */
- (CGFloat)LX_heightForHeaderInSection:(NSInteger)section{
    return 0;
}

- (UIView *)LX_viewForHeaderInSection:(NSInteger)section{
    return nil;
}

/**
 子类必须实现（返回数据请求回来之后放在cellViewModels数组里面的每个cell对应的cellViewModel）
 */
- (LXTableViewCellViewModel *)LX_cellViewModelForRowAtIndexPath:(NSIndexPath *)indexPath
{
    @throw [NSException exceptionWithName:@"抽象方法未实现"
                                   reason:[NSString stringWithFormat:@"%@ 必须实现抽象方法 %@",[self class],NSStringFromSelector(_cmd)]
                                 userInfo:nil];
}

- (NSMutableArray *)cellViewModels{
    if (_cellViewModels == nil) {
        _cellViewModels = [[NSMutableArray alloc]init];
    }
    return _cellViewModels;
}

@end
