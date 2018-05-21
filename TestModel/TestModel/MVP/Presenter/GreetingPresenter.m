//
//  GreetingPresenter.m
//  TestModel
//
//  Created by shinezone on 2018/5/17.
//  Copyright © 2018年 shinezone. All rights reserved.
//

#import "GreetingPresenter.h"
#import "Person.h"
@interface GreetingPresenter()
@property(strong,nonatomic) id<GreetingView> view;
@property(strong,nonatomic) Person *person;
@end
@implementation GreetingPresenter
- (instancetype)initWithView:(id)view person:(Person *)person
{
    self = [super init];
    if(self)
    {
        _view = view;
        _person = person;
    }
    return  self;
}
- (void)showGreeting
{
    NSString *hello = [NSString stringWithFormat:@"你们好，我是%@",_person.name];
    [_view setGreeting:hello];
}
@end
