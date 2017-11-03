//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Manager.h"
#import "CoolManager.h"

int main(int argc, const char * argv[])
{
    
    NSLog(@"Please pick your pizza size and toppings:");
    
    Kitchen* kitchen = [Kitchen new];
    Manager* notSoCoolManager;
    CoolManager* coolManager;
    
    while (YES) {
        
        NSLog(@"1 - Not So Cool Manager\n2 - Cool Manager\n3 - No Managers");
        char managerChoice[100];
        fgets(managerChoice, 100, stdin);
        
        NSString* managerChoiceInput = [[NSString alloc] initWithUTF8String:managerChoice];
        
        if ([managerChoiceInput isEqualToString:@"cool"]) {
            
            if (notSoCoolManager == nil) {
                notSoCoolManager = [Manager new];
            }
            kitchen.kitchenDelegate = notSoCoolManager;
            
        } else if ([managerChoiceInput isEqualToString:@"notcool"]) {
            
            if (coolManager == nil){
                coolManager = [CoolManager new];
            }
            kitchen.kitchenDelegate = coolManager;
            
        } else {
            kitchen.kitchenDelegate = nil;
            
        }
        
        NSLog(@"> ");
        char str[100];
        fgets (str, 100, stdin);
        
        NSString *inputString = [[NSString alloc] initWithUTF8String:str];
        inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        //NSLog(@"Input was %@", inputString);
        
        NSArray <NSString *>*commandWords = [inputString componentsSeparatedByString:@" "];
        
        if ([commandWords.firstObject.lowercaseString isEqualToString:@"popperoni"]) {
            Pizza *largePepperoni = [Kitchen largePepperoni];
            continue;
        }
        
        // And then send some message to the kitchen...
        NSString *sizeString = commandWords.firstObject;
        
        PizzaSize size = [kitchen pizzaSizeFromString:sizeString];
        NSRange range = NSMakeRange(1, commandWords.count-1);
        NSArray <NSString *>*toppings = [commandWords subarrayWithRange:range];
        Pizza *pizza = [kitchen makePizzaWithSize:size toppings:toppings];
        NSString *sizeStr = [kitchen sizeStringFromPizzaSize:pizza.size];
        NSString *toppingStr = [toppings componentsJoinedByString:@" "];
        NSLog(@"You order a pizza of size %@, with toppings: %@", sizeStr, toppingStr);
        
    }
    
    return 0;
}

