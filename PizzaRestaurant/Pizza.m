//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Yumi Machino on 2021/03/01.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

+ (instancetype) pizzaWithSize: (PizzaSize) size toppings: (NSArray *) toppings {
    return [[Pizza alloc] initWithSize:size toppings:toppings];
}

+ (Pizza *) largePepperoni {
    Pizza *largePepperoni = [Pizza pizzaWithSize:large toppings:@[@"tomato", @"sauce", @"mozzeralla", @"cheese", @"pepperonni"]];
    NSLog(@"Large pizza with %@ is ready!", [largePepperoni toppings]);
    return largePepperoni;
}

+ (Pizza *) meatLoverWithSize: (PizzaSize)size {
    Pizza *meatLover = [Pizza pizzaWithSize:size toppings:@[@"meat"]];
    NSLog(@"%@ pizza with %@ is ready!", [Pizza stringFromSize:size], [meatLover toppings]);
    return meatLover;
}


+ (PizzaSize) sizeFromString: (NSString *) strOrig {
    PizzaSize size;
    
    NSString *str = strOrig.lowercaseString;
    if ([str isEqualToString:@"small"]) {
        size = small;
    }
    else if ([str isEqualToString:@"medium"]) {
        size = medium;
    }
    else if ([str isEqualToString:@"large"]) {
        size = large;
    }
    else {
        size = NO;
    }
    return size;
}

+ (NSString *) stringFromSize: (PizzaSize) size {
    NSString *str;
    if (size == small) {
        str = @"small";
    }
    else if (size == medium) {
        str = @"medium";
    }
    else if (size == large) {
        str = @"large";
    }
    else {
        str = NULL;
    }
    return str;
}


- (instancetype)initWithSize: (PizzaSize) size toppings : (NSArray *) toppings {
    self = [super init];
    self.size = size;
    self.toppings = toppings;
    return self;
}

@end
