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

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings;
{
    Pizza *pizza;
    /// check if TRUE
    if([self.delegate kitchenShouldMakePizzaOfSize:size toppings:toppings]) {
        if ([self.delegate kitchenShouldUpgradeOrder:size]) {
            if (size == small) {
                pizza = [[Pizza alloc]initWithSize:medium toppings:toppings];
                NSLog(@"%@ pizza with %@ is ready!", [Pizza stringFromSize: medium], [pizza toppings]);
            } else if (size == medium) {
                pizza = [[Pizza alloc]initWithSize:large toppings:toppings];
                NSLog(@"%@ pizza with %@ is ready!", [Pizza stringFromSize: large], [pizza toppings]);
            } else {
                NSLog(@"No larger size than large");
                pizza = [[Pizza alloc]initWithSize:large toppings:toppings];
                NSLog(@"%@ with pizza %@ is ready!", [Pizza stringFromSize: large], [pizza toppings]);
            }
        } else {
            pizza = [[Pizza alloc]initWithSize:size toppings:toppings];
            NSLog(@"%@ pizza with %@ is ready!", [Pizza stringFromSize: size], [pizza toppings]);
        }
    } else {
        pizza = [[Pizza alloc]initWithSize:size toppings:toppings];
        NSLog(@"%@ pizza with %@ is ready!", [Pizza stringFromSize: size], [pizza toppings]);
    }
 

//    if ([self.delegate respondsToSelector: @selector(kitchenDidMakePizza:)]) {
//        [self.delegate kitchenDidMakePizza:pizza];
//    }
    
    return pizza;
}


@end
