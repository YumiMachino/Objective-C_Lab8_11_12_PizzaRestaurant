//
//  Kitchen.h
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

@protocol KitchenDelegate
@required
- (BOOL) kitchenShouldMakePizzaOfSize: (PizzaSize) size toppings: (NSArray *) toppings;
@required
- (BOOL) kitchenShouldUpgradeOrder: (PizzaSize) size;
@optional
- (void) kitchenDidMakePizza:(Pizza *)pizza;
@end


@interface Kitchen : NSObject

@property (nonatomic, weak) id<KitchenDelegate> delegate;

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings;


@end
