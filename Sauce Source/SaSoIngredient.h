//
//  SaSoIngredient.h
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

@interface SaSoIngredient : NSObject

@property (assign) NSString *name;
@property (assign) MeasurementUnits units;

- (id)initWithName:(NSString*)iName units:(MeasurementUnits)iUnits;

@end
