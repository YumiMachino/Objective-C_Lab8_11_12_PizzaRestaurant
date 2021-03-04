//
//  SecondManager.m
//  PizzaRestaurant
//
//  Created by Yumi Machino on 2021/03/04.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "SecondManager.h"

@implementation SecondManager

- (BOOL) kitchenShouldMakePizzaOfSize: (PizzaSize) size toppings: (NSArray *) toppings {
    NSLog(@"Second manager");
    return TRUE;
}

- (BOOL) kitchenShouldUpgradeOrder: (PizzaSize) size {
    return TRUE;
}

- (void) kitchenDidMakePizza:(Pizza *)pizza {
    NSLog(@"Delicious pizza is made!");
    /// send message to Delivery Service object
    [self.deliveryService deliverPizza:pizza];
}



@end
