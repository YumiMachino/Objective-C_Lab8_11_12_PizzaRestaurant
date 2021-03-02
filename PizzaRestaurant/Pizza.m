//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Yumi Machino on 2021/03/01.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza


- (instancetype)initWithSize: (enum Size) size andWith : (NSArray *) toppings {
    self = [super init];
    if (self) {
        
        _size = size;
        _toppings = toppings;
        
    }
    return self;
}


// a method: returns a value of its size (small, medium or large)
- (NSString *)returnSize {
    switch (_size) {
        case 0:
            return @"Small";
            break;
        case 1:
            return @"Medium";
            break;
        case 2:
            return @"Large";
        default:
            break;
    }
    return @"failed";
}

+ (Pizza *)largePepperoni {
    
    NSMutableArray *toppingItem = [NSArray arrayWithObject:@"pepperoni"];
    Pizza *largePepperoni = [[Pizza alloc] initWithSize:large andWith: toppingItem];
    
    return largePepperoni;
}





@end
