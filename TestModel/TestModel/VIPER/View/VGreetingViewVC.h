//
//  VGreetingViewVC.h
//  TestModel
//
//  Created by shinezone on 2018/5/21.
//  Copyright © 2018年 shinezone. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GreetingViewProtocol.h"
#import "VGreetingPresenter.h"
@protocol GreetingViewEventHandler;
@interface VGreetingViewVC : UIViewController<VGreetingViewProtocol>
@property(strong,nonatomic) UIButton* showGreetingBtn;
@property(strong,nonatomic) UILabel*  tipLabel;
@property(strong,nonatomic) id<GreetingViewEventHandler> eventHandler;
@end
