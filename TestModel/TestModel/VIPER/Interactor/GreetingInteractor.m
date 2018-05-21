//
//  GreetingInteractor.m
//  TestModel
//
//  Created by shinezone on 2018/5/21.
//  Copyright © 2018年 shinezone. All rights reserved.
//

#import "GreetingInteractor.h"
#import "Car.h"
@implementation GreetingInteractor
- (void)provideGreetingData
{
    Car *car = [Car new];
    car.name = @"小汽车";
    GreetingData *data = [GreetingData new];
    data.greeting = car.name;
    data.subject = @"hello";
    [self.greetingOutput receiveGreetingData:data];
}
@end
