//
//  GreetingViewModel.h
//  TestModel
//
//  Created by shinezone on 2018/5/18.
//  Copyright © 2018年 shinezone. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animate.h"
@interface GreetingViewModel : NSObject
@property(strong,nonatomic) Animate *animate;
@property(copy,nonatomic) NSString *greeting;
@property(copy,nonatomic) void (^change)(GreetingViewModel*);
- (instancetype)initWithAnimate:(Animate*)animate;
- (void)showGreeting;
@end
