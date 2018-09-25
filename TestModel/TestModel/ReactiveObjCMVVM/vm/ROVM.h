//
//  ROVM.h
//  TestModel
//
//  Created by wanghaoqiang on 2018/9/25.
//  Copyright © 2018年 shinezone. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ReactiveObjC/ReactiveObjC.h>
#import "ROModel.h"
@interface ROVM : NSObject
@property(strong,nonatomic) RACSignal *signal;
@property(copy,nonatomic) NSString *desName;
- (void)getData:(void(^)(BOOL isSuccess))successCallBack;
@end
