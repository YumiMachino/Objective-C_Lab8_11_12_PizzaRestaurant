//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Yumi Machino on 2021/03/04.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"

@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _pizzaDescription = [NSMutableArray new];
    }
    return self;
}


- (void)deliverPizza:(Pizza *)pizza {
    [self.pizzaDescription addObject:pizza];
    [self.deliveryCar deliverPizza:pizza];
}


@end
