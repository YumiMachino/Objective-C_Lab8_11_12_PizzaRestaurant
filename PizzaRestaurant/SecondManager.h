//
//  SecondManager.h
//  PizzaRestaurant
//
//  Created by Yumi Machino on 2021/03/04.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"
#import "DeliveryService.h"

NS_ASSUME_NONNULL_BEGIN

@interface SecondManager : NSObject <KitchenDelegate>

@property (nonatomic,weak) DeliveryService *deliveryService;


@end

NS_ASSUME_NONNULL_END
