//
//  PVC.h
//  TestModel
//
//  Created by shinezone on 2018/5/17.
//  Copyright © 2018年 shinezone. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PresenterPro.h"
@interface PVC : UIViewController<GreetingView>
@property(nonatomic,strong) id<GreetingViewPresenter> presenter;
@property(strong,nonatomic) UIButton* showGreetingBtn;
@property(strong,nonatomic) UILabel*  tipLabel;
@end
