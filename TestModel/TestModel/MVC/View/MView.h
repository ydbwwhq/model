//
//  MView.h
//  TestModel
//
//  Created by shinezone on 2018/5/17.
//  Copyright © 2018年 shinezone. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MModel.h"
@interface MView : UIView
@property (strong,nonatomic) UILabel *contentLabel;
@property (strong,nonatomic) MModel  *model;
@end
