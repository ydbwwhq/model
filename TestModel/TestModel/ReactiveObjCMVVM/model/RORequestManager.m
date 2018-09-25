//
//  RORequestManager.m
//  TestModel
//
//  Created by wanghaoqiang on 2018/9/25.
//  Copyright © 2018年 shinezone. All rights reserved.
//

#import "RORequestManager.h"

@implementation RORequestManager
- (RACSignal*)signal
{
    if(_signal == nil)
    {
        RACSignal *signal = [RACSignal createSignal:^RACDisposable * _Nullable(id<RACSubscriber>  _Nonnull subscriber) {
            [self getData:^(ROModel* result) {
               [subscriber sendNext:result];
            } failure:^(NSError *error) {
              [subscriber sendError:error];
            }];
            return nil;
        }];
        _signal = signal;
    }
    return _signal;
}
- (void)getData:(void (^)(ROModel *))successCallBack failure:(void (^)(NSError *))failureCallBack
{
    ROModel *model = [ROModel new];
    model.name = @"测试一下";
    successCallBack(model);
}
@end
