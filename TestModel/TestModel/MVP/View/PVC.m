//
//  PVC.m
//  TestModel
//
//  Created by shinezone on 2018/5/17.
//  Copyright © 2018年 shinezone. All rights reserved.
//

#import "PVC.h"

@interface PVC ()

@end

@implementation PVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *showBtn = [[UIButton alloc]init];
    showBtn.frame = CGRectMake(100, 100, 200, 100);
    [showBtn setTitle:@"点击测试" forState:UIControlStateNormal];
    [showBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.view addSubview:showBtn];
    [showBtn addTarget:self action:@selector(beginGreet) forControlEvents:UIControlEventTouchUpInside];
    
    UILabel *contentLabel = [UILabel new];
    contentLabel.frame  = CGRectMake(100, 400, 200, 100);
    contentLabel.textColor = [UIColor greenColor];
    [self.view addSubview:contentLabel];
    _tipLabel = contentLabel;
    UIButton *backBtn = [UIButton new];
    [backBtn setTitle:@"Back" forState:UIControlStateNormal];
    backBtn.frame = CGRectMake(50, 50,100, 50);
    [backBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:backBtn];
    [backBtn addTarget:self action:@selector(touchBack) forControlEvents:UIControlEventTouchUpInside];
}
- (void)touchBack
{
    [self dismissViewControllerAnimated:true completion:^{
        
    }];
}
- (void)beginGreet
{
    [self.presenter showGreeting];;
}
- (void)setGreeting:(NSString *)greeting
{
    _tipLabel.text = greeting;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
