//***********************************************
//        github：https://github.com/grammermao
//***********************************************
//        文件：MMRefreshNormalHeader.m
//        版权：  Copyright © 2017年 Ims. All rights reserved.
//**********************************************

#import "MMRefreshNormalHeader.h"
#import "MMRefreshNormalHeader.h"

@implementation MMRefreshNormalHeader

-(void)prepare{
    [super prepare];
    [self setTitle:@"下拉刷新" forState:MJRefreshStateIdle];
    [self setTitle:@"释放更新" forState:MJRefreshStatePulling];
    [self setTitle:@"加载中..." forState:MJRefreshStateRefreshing];
    [self setTitle:@"即将刷新的状态" forState:MJRefreshStateWillRefresh];
    [self setTitle:@"所有数据加载完毕，没有更多的数据了" forState:MJRefreshStateNoMoreData];
    
    // 设置字体
    self.stateLabel.font = [UIFont systemFontOfSize:14];
    self.lastUpdatedTimeLabel.font = [UIFont systemFontOfSize:14];
    
    // 设置颜色
    self.stateLabel.textColor = [UIColor lightGrayColor];
    self.lastUpdatedTimeLabel.textColor = [UIColor lightGrayColor];
    // 隐藏时间
    self.lastUpdatedTimeLabel.hidden = YES;
    // 隐藏状态
//    self.stateLabel.hidden = YES;
    // 设置自动切换透明度(在导航栏下面自动隐藏)
    self.automaticallyChangeAlpha = YES;

}

-(void)placeSubviews{
    [super placeSubviews];
}

@end
