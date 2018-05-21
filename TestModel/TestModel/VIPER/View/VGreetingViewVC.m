//
//  VGreetingViewVC.m
//  TestModel
//
//  Created by shinezone on 2018/5/21.
//  Copyright © 2018年 shinezone. All rights reserved.
//

#import "VGreetingViewVC.h"

@interface VGreetingViewVC ()

@end

@implementation VGreetingViewVC

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
  if(self.eventHandler)
  {
      [self.eventHandler didTapShowGreetingButton];
  }
}
- (void)setGreeting:(NSString *)greeting
{
    _tipLabel.text = greeting;
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
