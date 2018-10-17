//
//  LXBaseTableViewCell.m
//  LXMVVMProject
//
//  Created by Andy on 2018/7/10.
//  Copyright © 2018年 AndyLLL. All rights reserved.
//

#import "LXBaseTableViewCell.h"

@interface LXBaseTableViewCell ()
@property (nonatomic, strong) LXTableViewCellViewModel * viewModel;
@end

@implementation LXBaseTableViewCell

+ (instancetype)cellForTableView:(UITableView *)tableView viewModel:(LXTableViewCellViewModel *)viewModel{
    NSString * identify = NSStringFromClass([self class]);
    LXBaseTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[self alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
        [cell setupLayout];
        [cell setupBinding];
    }
    cell.viewModel = viewModel;
    [cell setupData];
    return cell;
}

//cell里面实现，通过viewModel去存储数据，高度由这个Block返回给ViewModel保存起来
+ (NSNumber *)calculateRowHeightWithViewModel:(LXTableViewCellViewModel *)viewmodel{
    return nil;
}

- (void)setupLayout{
    
}

- (void)setupBinding{
    
}

- (void)setupData{
    
}


@end
