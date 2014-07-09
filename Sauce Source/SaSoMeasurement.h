//
//  SaSoMeasurement.h
//  Sauce Source
//
//  Created by Dave Esposito on 7/8/14.
//  Copyright (c) 2014 Esposito's Hot Sauce. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MeasurementUnits) {
    MU_Each,
    MU_Ounce,
    MU_Fluid_Ounce,
    MU_Cup
};

@interface SaSoMeasurement : NSObject

@property (assign) float quantity;
@property (assign) MeasurementUnits units;

- (id)initMeasurementWithQuantity:(float)iQuantity andUnits:(MeasurementUnits)iUnits;
- (id)updateMeasurementQuantity:(float)iQuantity andUnits:(MeasurementUnits)iUnits;

@end
