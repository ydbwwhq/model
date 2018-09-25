//
//  ROVM.m
//  TestModel
//
//  Created by wanghaoqiang on 2018/9/25.
//  Copyright © 2018年 shinezone. All rights reserved.
//

#import "ROVM.h"
#import "RORequestManager.h"
#import "ROModel.h"
@implementation ROVM
- (RACSignal*)signal
{
    if(_signal == nil)
    {
        _signal = [RACSignal createSignal:^RACDisposable * _Nullable(id<RACSubscriber>  _Nonnull subscriber) {
            [self getData:^(BOOL isSuccess) {
                [subscriber sendNext:[NSNumber numberWithBool:isSuccess]];
            }];
            [subscriber sendCompleted];
            return nil;
        }];
    }
    return _signal;
}

- (void)getData:(void (^)(BOOL isSuccess))callBack
{
    RORequestManager *manager = [RORequestManager new];
    [manager.signal subscribeNext:^(id  _Nullable x) {
        NSLog(@"收到数据了=%@",x);
        ROModel *model = (ROModel*)x;
        self.desName = [NSString stringWithFormat:@"我的名字是:%@",model.name];
        callBack(true);
    } error:^(NSError * _Nullable error) {
        NSLog(@"收到了错误信息=%@",error.localizedDescription);
        callBack(false);
    }];
}
@end
