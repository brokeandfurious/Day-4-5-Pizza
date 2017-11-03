//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by steve on 2017-11-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza
- (instancetype)initWithPizzaSize:(PizzaSize)size andToppings:(NSArray<NSString *>*)toppings {
    if (self = [super init]) {
        _size = size;
        _toppings = toppings;
    }
    return self;
}

+ (Pizza *)largePepperoni {
    return [[Pizza alloc] initWithPizzaSize:Large andToppings:@[@"pepperoni"]];
}
@end
