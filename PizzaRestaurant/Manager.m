//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Yumi Machino on 2021/03/04.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"


@implementation Manager: NSObject

- (BOOL) kitchenShouldMakePizzaOfSize: (PizzaSize) size toppings: (NSArray *) toppings {
    NSLog(@"Manager");
    if ([toppings containsObject:@"anchovies"]) {
        return FALSE;
    }
    return TRUE;
}


- (BOOL) kitchenShouldUpgradeOrder: (PizzaSize) size {
    return FALSE;
}




@end
