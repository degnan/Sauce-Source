//
//  SaSoMeasurement.m
//  Sauce Source
//
//  Created by Dave Esposito on 7/8/14.
//  Copyright (c) 2014 Esposito's Hot Sauce. All rights reserved.
//

#import "SaSoMeasurement.h"

@implementation SaSoMeasurement

- (id)initMeasurementWithQuantity:(float)iQuantity andUnits:(MeasurementUnits)iUnits {
    if (self == [super init]) {
        self.quantity = iQuantity;
        self.units = iUnits;
        return self;
    } else
        return nil;
}

- (id)updateMeasurementQuantity:(float)iQuantity andUnits:(MeasurementUnits)iUnits {
    self.quantity = iQuantity;
    self.units = iUnits;
    return self;
}

@end
