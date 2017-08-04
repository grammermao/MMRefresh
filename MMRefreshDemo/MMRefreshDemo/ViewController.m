//
//  ViewController.m
//  MMRefreshDemo
//
//  Created by Ims on 2017/3/30.
//  Copyright © 2017年 Ims. All rights reserved.
//

#import "ViewController.h"
#import "MMRefreshNormalHeader.h"

#define kSCREENWIDTH [UIScreen mainScreen].bounds.size.width
#define kSCREENHEIGHT [UIScreen mainScreen].bounds.size.height

@interface ViewController ()
@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myTableview.mj_header =[MMRefreshNormalHeader headerWithRefreshingBlock:^{
        [self performSelector:@selector(stop)];
    }];
}


-(UITableView *)myTableview{
    if (!_myTableview) {
        _myTableview =[[UITableView alloc]init];
        _myTableview.frame =CGRectMake(0, 0,kSCREENWIDTH, kSCREENHEIGHT);
        [self.view addSubview:_myTableview];
    }
    return _myTableview;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)stop{
    
    [self.myTableview.mj_header endRefreshing];
}

@end
