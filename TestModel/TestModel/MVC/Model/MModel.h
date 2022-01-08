//
//  MModel.h
//  TestModel
//
//  Created by shinezone on 2018/5/17.
//  Copyright © 2018年 shinezone. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MModel : NSObject

@property(copy,nonatomic) NSString* content;

- (instancetype)initWithContent:(NSString *)content;

@end
