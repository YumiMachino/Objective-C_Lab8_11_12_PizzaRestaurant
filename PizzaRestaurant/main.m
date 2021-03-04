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
#import "Manager.h"
#import "SecondManager.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        Kitchen *restaurantKitchen = [Kitchen new];
        Manager *manager = [Manager new];
        SecondManager *secondManager = [SecondManager new];
        
        while (TRUE) {
            
            NSLog(@"-----------------------------");
            NSLog(@"Please select from the below:");
            NSLog(@"1. I want to customize pizza!: (ex: small ham pinappe cheese)");
            NSLog(@"2. I want a large Pepperoni pizza!");
            NSLog(@"3. I want a MeatLover pizza!");
            NSLog(@"-----------------------------");
            
            // Loop forever
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            NSString *keyword = commandWords[0];
            
            if ([keyword isEqualToString:@"1"]) {
                NSLog(@"Enter pizza size and toppings!");
                fgets(str, 100, stdin);
                NSString *inputString = [[NSString alloc] initWithUTF8String:str];
                inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
                
                // Take the first word of the command as the size, and the rest as the toppings
                NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
                NSString *keyword = commandWords[0];
                PizzaSize size = [Pizza sizeFromString:keyword];
                NSArray *toppings = [commandWords subarrayWithRange:NSMakeRange(1, commandWords.count - 1)];
                
                NSLog(@"Who should make it?");
                NSLog(@"1. Manager 2 Second Manager 3. Kitchen");
                fgets(str, 100, stdin);
                NSString *inputString2 = [[NSString alloc] initWithUTF8String:str];
                inputString2 = [inputString2 stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
                
                if ([inputString2 isEqualToString:@"1"]) {
                    restaurantKitchen.delegate = manager;
                    [restaurantKitchen makePizzaWithSize:size toppings:toppings];
                } else if ([inputString2 isEqualToString:@"2"]) {
                    restaurantKitchen.delegate = secondManager;
                    [restaurantKitchen makePizzaWithSize:size toppings:toppings];
                } else {
                    [restaurantKitchen makePizzaWithSize:size toppings:toppings];
                }
                
            } else if ([keyword isEqualToString:@"2"]) {
                [Pizza largePepperoni];
            } else if ([keyword isEqualToString:@"3"]) {
                NSLog(@"Choice of your size:");
                NSLog(@"1. small 2. medium 3. large");
                fgets(str, 100, stdin);
                NSString *inputString2 = [[NSString alloc] initWithUTF8String:str];
                inputString2 = [inputString2 stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
                if ([inputString2 isEqualToString:@"1"]) {
                    [Pizza meatLoverWithSize:small];
                } else if ([inputString2 isEqualToString:@"2"]) {
                    [Pizza meatLoverWithSize:medium];
                } else if ([inputString2 isEqualToString:@"3"]) {
                    [Pizza meatLoverWithSize:large];
                } else {
                    NSLog(@"not an option.");
                }
            }
        }
        return 0;
    }
}
