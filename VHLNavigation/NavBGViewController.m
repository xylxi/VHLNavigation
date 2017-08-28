//
//  NavBGViewController.m
//  VHLNavigation
//
//  Created by vincent on 2017/8/28.
//  Copyright © 2017年 Darnel Studio. All rights reserved.
//

#import "NavBGViewController.h"
#import "HiddenNavViewController.h"
#import "FakeNavViewController.h"
#import "TransitionViewController.h"
#import "VHLNavigation.h"

@interface NavBGViewController ()

@end

@implementation NavBGViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"导航栏背景图片";
    self.view.backgroundColor = [UIColor whiteColor];
    
    //[self vhl_setNavigationSwitchStyle:VHLNavigationSwitchStyleFakeNavigationBar];
    [self vhl_setNavBarBackgroundImage:[UIImage imageNamed:@"navbg"]];  // millcolorGrad
    [self vhl_setNavBarTitleColor:[UIColor whiteColor]];
    [self vhl_setNavBarTintColor:[UIColor whiteColor]];
    [self vhl_setStatusBarStyle:UIStatusBarStyleLightContent];
    
    //
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 60 + 64, 150, 30)];
    [button setTitle:@"微信样式" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor blackColor]];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(goFake:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button1 = [[UIButton alloc] initWithFrame:CGRectMake(100, 100 + 64, 150, 30)];
    [button1 setTitle:@"颜色过渡" forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button1 setBackgroundColor:[UIColor blackColor]];
    [self.view addSubview:button1];
    [button1 addTarget:self action:@selector(goTransition:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button2 = [[UIButton alloc] initWithFrame:CGRectMake(100, 140 + 64, 150, 30)];
    [button2 setTitle:@"导航栏背景图片" forState:UIControlStateNormal];
    [button2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button2 setBackgroundColor:[UIColor blackColor]];
    [self.view addSubview:button2];
    [button2 addTarget:self action:@selector(goNavBG:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button3 = [[UIButton alloc] initWithFrame:CGRectMake(100, 180 + 64, 150, 30)];
    [button3 setTitle:@"隐藏导航栏" forState:UIControlStateNormal];
    [button3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button3 setBackgroundColor:[UIColor blackColor]];
    [self.view addSubview:button3];
    [button3 addTarget:self action:@selector(goHidden:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)goFake:(UIButton *)sender {
    FakeNavViewController *vc1 = [[FakeNavViewController alloc] init];
    [self.navigationController pushViewController:vc1 animated:YES];
}

- (void)goTransition:(UIButton *)sender {
    TransitionViewController *vc2 = [[TransitionViewController alloc] init];
    [self.navigationController pushViewController:vc2 animated:YES];
}

- (void)goNavBG:(UIButton *)sender {
    NavBGViewController *vc3 = [[NavBGViewController alloc] init];
    [self.navigationController pushViewController:vc3 animated:YES];
}

- (void)goHidden:(UIButton *)sender {
    HiddenNavViewController *vc4 = [[HiddenNavViewController alloc] init];
    [self.navigationController pushViewController:vc4 animated:YES];
}
@end
