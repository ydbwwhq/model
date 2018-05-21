//
//  PresenterPro.h
//  TestModel
//
//  Created by shinezone on 2018/5/17.
//  Copyright © 2018年 shinezone. All rights reserved.
//
#import "Person.h"
@protocol GreetingView <NSObject>
- (void)setGreeting:(NSString*)greeting;
@end

@protocol GreetingViewPresenter <NSObject>
- (instancetype)initWithView:(id<GreetingView>)view person:(Person*)person;
- (void)showGreeting;
@end
