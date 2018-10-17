//
//  LXBaseViewController.m
//  LXMVVMProject
//
//  Created by Andy on 2018/7/10.
//  Copyright © 2018年 AndyLLL. All rights reserved.
//

#import "LXBaseViewController.h"

@interface LXBaseViewController ()
/**
 baseVC的Bviewmodel，外部只是暴露getter属性
 */
@property (nonatomic, strong) LXBaseViewModel * viewModel;
@end

@implementation LXBaseViewController

- (instancetype)initWithViewModel:(LXBaseViewModel *)viewModel{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        _viewModel = viewModel;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = self.viewModel.title;
    self.view.backgroundColor = [UIColor lightGrayColor];
}

- (void)setupLayout{
    
}

- (void)setupBinding{
    
}

- (void)setupData{
    
}

- (void)dealloc{
    NSLog(@"%s---dealloc",object_getClassName(self));
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
