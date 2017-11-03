//
//  CoolManager.m
//  PizzaRestaurant
//
//  Created by Murat Ekrem Kolcalar on 11/3/17.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "CoolManager.h"
#import "Pizza.h"

@implementation CoolManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza{
    NSLog(@"Thanks for your purchase. We also sell crystal meth.");
}

@end
