//
//  ROVC.m
//  TestModel
//
//  Created by wanghaoqiang on 2018/9/25.
//  Copyright © 2018年 shinezone. All rights reserved.
//

#import "ROVC.h"
#import "ROVM.h"
#import <ReactiveObjC/ReactiveObjC.h>
@interface ROVC ()

@end

@implementation ROVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *dataDesLabel = [UILabel new];
    [self.view addSubview:dataDesLabel];
    dataDesLabel.font = [UIFont systemFontOfSize:15];
    dataDesLabel.textColor = [UIColor redColor];
    dataDesLabel.frame = CGRectMake(100, 100, 200, 50);
    
    UIButton *getDataBtn = [UIButton new];
    [self.view addSubview:getDataBtn];
    getDataBtn.frame = CGRectMake(100, 300,100, 50);
    [getDataBtn setTitle:@"获取数据" forState:UIControlStateNormal];
    [getDataBtn setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    ROVM *vm = [ROVM new];
    [[[getDataBtn rac_signalForControlEvents:UIControlEventTouchUpInside] flattenMap:^__kindof RACSignal * _Nullable(__kindof UIControl * _Nullable value) {
        return vm.signal;
    }] subscribeNext:^(id  _Nullable x) {
        if([x boolValue])
        {
            dataDesLabel.text = vm.desName;
        }
    }] ;
    //[self testRAC];
}

- (void)testRAC
{
    RACSignal* signal = [RACSignal createSignal:^RACDisposable * _Nullable(id<RACSubscriber>  _Nonnull subscriber) {
        NSLog(@"Here I am");
        [subscriber sendNext:@"信号1"];
        return nil;
    }];
    [signal subscribeNext:^(id  _Nullable x) {
        NSLog(@"收到信号=%@",x);
    }];
    
}
@end
