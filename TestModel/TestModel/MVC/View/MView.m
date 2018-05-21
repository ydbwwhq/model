//
//  MView.m
//  TestModel
//
//  Created by shinezone on 2018/5/17.
//  Copyright © 2018年 shinezone. All rights reserved.
//

#import "MView.h"

@implementation MView
- (instancetype)init
{
    self = [super init];
    if(self)
    {
        _contentLabel = [UILabel new];
        [self addSubview:_contentLabel];
        _contentLabel.text  = @"你好";
        _contentLabel.frame =  CGRectMake(0, 0, 200, 100);
    }
    return  self;
}
- (void)setModel:(MModel *)model
{
    _model = model;
    _contentLabel.text = model.content;
}
@end
