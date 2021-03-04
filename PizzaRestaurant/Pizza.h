//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Yumi Machino on 2021/03/01.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    small,
    medium,
    large
} PizzaSize;


@interface Pizza : NSObject

@property PizzaSize size;
@property NSArray *toppings;


+ (instancetype) pizzaWithSize: (PizzaSize) size toppings: (NSArray *) toppings;
+ (Pizza *) largePepperoni;
+ (Pizza *) meatLoverWithSize:(PizzaSize)size;
+ (PizzaSize) sizeFromString: (NSString *) str;
+ (NSString *) stringFromSize: (PizzaSize) size;
- (instancetype) initWithSize: (PizzaSize) size toppings: (NSArray *) toppings;
- (PizzaSize) size;
- (NSArray *) toppings;

@end

NS_ASSUME_NONNULL_END
