//
//  DeliveryCar.h
//  PizzaRestaurant
//
//  Created by Yumi Machino on 2021/03/04.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

NS_ASSUME_NONNULL_BEGIN

@interface DeliveryCar : NSObject

- (void)deliverPizza:(Pizza *)pizza;

@end

NS_ASSUME_NONNULL_END
