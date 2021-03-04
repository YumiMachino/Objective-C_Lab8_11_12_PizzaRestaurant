//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Yumi Machino on 2021/03/04.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryCar.h"

NS_ASSUME_NONNULL_BEGIN

/// handle messages from the manager
@interface DeliveryService : NSObject

@property (nonatomic, strong) NSMutableArray *pizzaDescription;

@property (nonatomic) DeliveryCar *deliveryCar;

- (void)deliverPizza:(Pizza *)pizza;


@end

NS_ASSUME_NONNULL_END
