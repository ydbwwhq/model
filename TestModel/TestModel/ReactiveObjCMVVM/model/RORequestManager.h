//
//  RORequestManager.h
//  TestModel
//
//  Created by wanghaoqiang on 2018/9/25.
//  Copyright © 2018年 shinezone. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ReactiveObjC/ReactiveObjC.h>
#import "ROModel.h"
@interface RORequestManager : NSObject
@property(strong,nonatomic) RACSignal *signal;
- (void)getData:(void(^)(ROModel* result))successCallBack failure:(void(^)(NSError* error))failureCallBack;
@end
