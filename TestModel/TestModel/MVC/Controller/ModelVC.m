//
//  ModelVC.m
//  TestModel
//
//  Created by shinezone on 2018/5/17.
//  Copyright © 2018年 shinezone. All rights reserved.
//

#import "ModelVC.h"
#import "MView.h"
@interface ModelVC ()

@end

@implementation ModelVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    MView *mView = [MView new];
    mView.backgroundColor = [UIColor whiteColor];
    mView.frame = CGRectMake(100, 100, 200, 100);
    [self.view addSubview:mView];
    MModel *model = [MModel new];
    model.content = @"哈";
    mView.contentLabel.text = model.content;
    
    
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
