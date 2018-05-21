//
//  MVVMVC.h
//  TestModel
//
//  Created by shinezone on 2018/5/18.
//  Copyright © 2018年 shinezone. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GreetingViewModel.h"
@interface MVVMVC : UIViewController
@property(strong,nonatomic) UIButton* showGreetingBtn;
@property(strong,nonatomic) UILabel*  tipLabel;
@property(strong,nonatomic) GreetingViewModel *viewModel;
@end
