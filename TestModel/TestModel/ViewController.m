//
//  ViewController.m
//  TestModel
//
//  Created by shinezone on 2018/5/17.
//  Copyright © 2018年 shinezone. All rights reserved.
//

#import "ViewController.h"
#import "ModelVC.h"
#import "PVC.h"
#import "Person.h"
#import "GreetingPresenter.h"
#import "MVVMVC.h"

#import "VGreetingViewVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)touchMVCBtn:(id)sender
{
    ModelVC *vc = [[ModelVC alloc]init];
    [self presentViewController:vc animated:true completion:^{
        
    }];
}
- (IBAction)touchMVPBtn:(id)sender
{
    PVC *vc = [[PVC alloc]init];
    Person *person = [Person new];
    person.name = @"Jack";
    id<GreetingViewPresenter> presenter = [[GreetingPresenter alloc]initWithView:vc person:person];
    vc.presenter = presenter;
    [self presentViewController:vc animated:true completion:^{
        
    }];
}
- (IBAction)touchMVVMBtn:(id)sender
{
    MVVMVC *vc = [[MVVMVC alloc]init];
    Animate *animate = [Animate new];
    animate.name = @"测试动画";
    GreetingViewModel *viewModel = [[GreetingViewModel alloc]initWithAnimate:animate];
    vc.viewModel = viewModel;
    [self presentViewController:vc animated:true completion:^{
        
    }];
}
- (IBAction)touchVIPERBtn:(id)sender
{
    
    
    
    VGreetingViewVC *vc = [[VGreetingViewVC alloc]init];
    VGreetingPresenter *presenter = [VGreetingPresenter new];
    GreetingInteractor *interactor = [GreetingInteractor new];
    vc.eventHandler = presenter;
    presenter.view = vc;
    presenter.provider = interactor;
    interactor.greetingOutput = presenter;
    
    [self presentViewController:vc animated:true completion:^{
        
    }];
}

@end
