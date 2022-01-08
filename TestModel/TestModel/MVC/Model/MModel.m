//
//  MModel.m
//  TestModel
//
//  Created by shinezone on 2018/5/17.
//  Copyright © 2018年 shinezone. All rights reserved.
//

#import "MModel.h"

@implementation MModel

- (instancetype)initWithContent:(NSString *)content{
    self = [super init];
    if(self){
        self.content = content;
    }
    return self;
}

@end
