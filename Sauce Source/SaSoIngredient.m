//
//  SaSoIngredient.m
//  Sauce Source
//
//  Created by Dave Esposito on 7/8/14.
//  Copyright (c) 2014 Esposito's Hot Sauce. All rights reserved.
//

#import "SaSoIngredient.h"

@implementation SaSoIngredient

- (id)initWithName:(NSString*)iName andMeasurement:(SaSoMeasurement*)iMeasurement {
    if (self == [super init]) {
        self.name = iName;
        self.measurement = iMeasurement;
        return self;
    } else
        return nil;
}
- (id)updateIngredient:(NSString*)iName andMeasurement:(SaSoMeasurement*)iMeasurement {
    [self updateIngredientName:iName];
    [self updateIngredientMeasurement:iMeasurement];
    return self;
}

- (id)updateIngredientName:(NSString*)iName {
    self.name = iName;
    return self;
}

- (id)updateIngredientMeasurement:(SaSoMeasurement *)iMeasurement {
    self.measurement = iMeasurement;
    return self;
}

@end
