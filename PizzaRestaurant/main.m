//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
  
        while (TRUE) {
            // Loop forever
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            if ([commandWords[0] isEqualToString:@"small"]) {
                NSMutableArray *toppingItems = [NSMutableArray new];
                for (int i = 1; i < [commandWords count]; i++){
                    [toppingItems addObject:commandWords[i]];
                }
                Pizza * order = [restaurantKitchen makePizzaWithSize:small toppings:toppingItems];
                NSLog(@"Order to Kitchen: %@ pizza with %@", [order returnSize], toppingItems);
                
            } else if ([commandWords[0] isEqualToString:@"medium"]) {
                NSMutableArray *toppingItems = [NSMutableArray new];
                for (int i = 1; i < [commandWords count]; i++){
                    [toppingItems addObject:commandWords[i]];
                }
                Pizza * order = [restaurantKitchen makePizzaWithSize:medium toppings:toppingItems];
                NSLog(@"Order to Kitchen: %@ pizza with %@", [order returnSize], toppingItems);
                
            } else if  ([commandWords[0] isEqualToString:@"large"]) {
                NSMutableArray *toppingItems = [NSMutableArray new];
                for (int i = 1; i < [commandWords count]; i++){
                    [toppingItems addObject:commandWords[i]];
                }
              Pizza *order = [restaurantKitchen makePizzaWithSize:large toppings: toppingItems];
              NSLog(@"Order to Kitchen: %@ pizza with %@", [order returnSize], toppingItems);
               
            } else if ([commandWords[0] isEqualToString:@"pepperoni"]) {
                Pizza *order = [restaurantKitchen makePepperoniPizza];
                NSLog(@"Order to Kitchen: %@ pizza with pepperoni", [order returnSize]);
              
            }
        }

    }
    return 0;
}

