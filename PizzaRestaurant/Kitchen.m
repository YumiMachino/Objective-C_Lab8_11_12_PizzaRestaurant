//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(enum Size)size toppings:(NSArray *)toppings
{
    return [[Pizza alloc] initWithSize:size andWith:toppings];
}

- (Pizza *) makePepperoniPizza {
    return [Pizza largePepperoni];
}



@end
