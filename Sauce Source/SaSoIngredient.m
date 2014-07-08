//
//  SaSoIngredient.m
//  Sauce Source
//
//  Created by Dave Esposito on 7/8/14.
//  Copyright (c) 2014 Esposito's Hot Sauce. All rights reserved.
//

#import "SaSoIngredient.h"

@implementation SaSoIngredient

- (id)initWithName:(NSString*)iName units:(MeasurementUnits)iUnits {
    if (self == [super init]) {
        self.name = iName;
        self.units = iUnits;
        return self;
    } else
        return nil;
}

@end
