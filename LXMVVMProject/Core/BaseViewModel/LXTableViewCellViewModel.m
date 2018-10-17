//
//  LXTableViewCellViewModel.m
//  LXMVVMProject
//
//  Created by Andy on 2018/7/10.
//  Copyright © 2018年 AndyLLL. All rights reserved.
//

#import "LXTableViewCellViewModel.h"

@interface LXTableViewCellViewModel ()
@property (nonatomic, strong, nullable) id entity;
@end

@implementation LXTableViewCellViewModel
- (instancetype)initWithEntity:(id)entity{
    self = [super init];
    if (self) {
        _entity = entity;
        _cellSelectedSignal = [RACSubject subject];
    }
    return self;
}

//cellViewModel来计算高度，通过带返回值的Block。从上层数据拿高度
- (NSNumber *)cacheCellHeightWithCalculateBlock:(LXTableCellViewModelCalculateBlock)calculateHeightBlock{
    if (!self.rowHeight) {
        self.rowHeight = calculateHeightBlock();
    }
    return self.rowHeight;
}

@end
