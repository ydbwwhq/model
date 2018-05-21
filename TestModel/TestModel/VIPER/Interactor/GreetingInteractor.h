//
//  GreetingInteractor.h
//  TestModel
//
//  Created by shinezone on 2018/5/21.
//  Copyright © 2018年 shinezone. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GreetingData.h"
@protocol GreetingProvider<NSObject>
- (void)provideGreetingData;
@end
@protocol GreetingOutput<NSObject>
- (void)receiveGreetingData:(GreetingData*)greetingData;
@end
@interface GreetingInteractor : NSObject<GreetingProvider>
@property(strong,nonatomic)id<GreetingOutput> greetingOutput;
@end
