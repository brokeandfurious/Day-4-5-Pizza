//
//  KitchenDelegate.h
//  PizzaRestaurant
//
//  Created by Murat Ekrem Kolcalar on 11/3/17.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

@class Kitchen;

@protocol KitchenDelegate <NSObject>

-(BOOL)kitchen:(Kitchen*)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen*)kitchen;

@optional

-(void)kitchenDidMakePizza:(Pizza*)pizza;

@end
