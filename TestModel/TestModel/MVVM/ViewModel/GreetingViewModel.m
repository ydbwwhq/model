//
//  GreetingViewModel.m
//  TestModel
//
//  Created by shinezone on 2018/5/18.
//  Copyright © 2018年 shinezone. All rights reserved.
//

#import "GreetingViewModel.h"

@implementation GreetingViewModel
- (instancetype)initWithAnimate:(Animate *)animate
{
    self = [super init];
    if(self)
    {
        self.animate = animate;
    }
    return  self;
}
- (void)setGreeting:(NSString *)greeting
{
    _greeting = greeting;
    self.change(self);
}
- (void)showGreeting
{
    self.greeting = [NSString stringWithFormat:@"Hello %@",self.animate.name];
}
@end
