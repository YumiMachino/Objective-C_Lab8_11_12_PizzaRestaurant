//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Yumi Machino on 2021/03/01.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Pizza : NSObject

enum Size {small, medium, large};

@property enum Size size;
@property NSMutableArray *toppings;

- (instancetype)initWithSize: (enum Size) size andWith : (NSArray *) toppings;

+ (Pizza *)largePepperoni;
- (NSString *)returnSize;

@end

NS_ASSUME_NONNULL_END
