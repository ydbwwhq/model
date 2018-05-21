//
//  VGreetingPresenter.m
//  TestModel
//
//  Created by shinezone on 2018/5/21.
//  Copyright © 2018年 shinezone. All rights reserved.
//

#import "VGreetingPresenter.h"

@implementation VGreetingPresenter
- (void)didTapShowGreetingButton
{
    [self.provider provideGreetingData];
}
- (void)receiveGreetingData:(GreetingData *)greetingData
{
    NSString *greeting = [[NSString alloc]initWithFormat:@"%@ %@",greetingData.greeting,greetingData.subject];
    [self.view setGreeting:greeting];
}
@end
