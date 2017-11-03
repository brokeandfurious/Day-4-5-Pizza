//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Murat Ekrem Kolcalar on 11/3/17.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"
#import "Pizza.h"

@implementation Manager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    return [toppings containsObject:[@"anchovies" uppercaseString]];
    
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return NO;
}

@end
