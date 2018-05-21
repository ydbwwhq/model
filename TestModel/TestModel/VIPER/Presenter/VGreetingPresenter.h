//
//  VGreetingPresenter.h
//  TestModel
//
//  Created by shinezone on 2018/5/21.
//  Copyright © 2018年 shinezone. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GreetingInteractor.h"
#import "VGreetingViewVC.h"
#import "GreetingViewProtocol.h"
@protocol GreetingViewEventHandler<NSObject>
- (void)didTapShowGreetingButton;
@end

@interface VGreetingPresenter : NSObject<GreetingViewEventHandler,GreetingOutput>
@property(strong,nonatomic) id<VGreetingViewProtocol> view;
@property(strong,nonatomic) id<GreetingProvider> provider;

@end
