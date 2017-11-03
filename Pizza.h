//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by steve on 2017-11-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, PizzaSize) {
    Small,
    Medium,
    Large,
    None
};

@interface Pizza : NSObject
@property (nonatomic, assign, readonly) PizzaSize size;
@property (nonatomic, copy) NSArray <NSString *>*toppings;
- (instancetype)initWithPizzaSize:(PizzaSize)size andToppings:(NSArray<NSString *>*)toppings;
+ (Pizza *)largePepperoni;
@end
