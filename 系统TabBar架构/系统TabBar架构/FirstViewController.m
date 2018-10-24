//
//  FirstViewController.m
//  系统TabBar架构
//
//  Created by wangze on 16/1/28.
//  Copyright © 2016年 huashan. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    createBtn(btn, @"下一页", CGRectMake(100, 100, 100, 50));
    [btn addTarget:self action:@selector(next) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    createBtn(btn1, @"返回登录页", CGRectMake(100, 200, 100, 50));
    [btn1 addTarget:self action:@selector(backTo) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
}

-(void)next
{
    NextViewController *tempVC = [[NextViewController alloc] init];
    [self.navigationController pushViewController:tempVC animated:YES];
}

-(void)backTo
{
    [self.navigationController.navigationController popViewControllerAnimated:YES];
}


@end
