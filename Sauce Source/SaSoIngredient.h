//
//  SaSoIngredient.h
//  Sauce Source
//
//  Created by Dave Esposito on 7/8/14.
//  Copyright (c) 2014 Esposito's Hot Sauce. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SaSoMeasurement.h"

@interface SaSoIngredient : NSObject

@property (assign) NSString *name;
@property (assign) SaSoMeasurement* measurement;

- (id)initWithName:(NSString*)iName andMeasurement:(SaSoMeasurement*)iMeasurement;

- (id)updateIngredient:(NSString*)iName andMeasurement:(SaSoMeasurement*)iMeasurement;
- (id)updateIngredientName:(NSString*)iName;
- (id)updateIngredientMeasurement:(SaSoMeasurement*)iMeasurement;

@end
