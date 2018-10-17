//
//  LXTableViewCellViewModel.h
//  LXMVVMProject
//
//  Created by Andy on 2018/7/10.
//  Copyright © 2018年 AndyLLL. All rights reserved.
//

#import "LXBaseViewModel.h"

typedef NSNumber * _Nonnull (^LXTableCellViewModelCalculateBlock)();

@interface LXTableViewCellViewModel : LXBaseViewModel
@property (nonatomic, strong, readonly, nullable) id entity; //cellViewModel会绑定一个entity实例对象
@property (nonatomic, strong, nullable) NSNumber * rowHeight; //每个cellViewModel里面有一个实体，然后还有一个字段计算高度，缓存

/**
 cell点击的信号量坚挺
 */
@property (nonatomic, strong, nullable) RACSubject * cellSelectedSignal;

//cellViewModel的初始化
- (nullable instancetype)initWithEntity:(nullable id)entity;

- (NSNumber *_Nonnull)cacheCellHeightWithCalculateBlock:(_Nonnull LXTableCellViewModelCalculateBlock)calculateHeightBlock;
@end
