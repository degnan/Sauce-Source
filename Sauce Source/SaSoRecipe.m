//
//  SaSoRecipe.m
//  Sauce Source
//
//  Created by Dave Esposito on 7/8/14.
//  Copyright (c) 2014 Esposito's Hot Sauce. All rights reserved.
//

#import "SaSoRecipe.h"

@implementation SaSoRecipe

- (id)init
{
    if (self == [super init]) {
        self.name = @"New Recipe";
        self.ingredients = [[NSMutableArray alloc] init];
        self.steps = [[NSMutableArray alloc] init];
        self.yield = [[SaSoMeasurement alloc] initMeasurementWithQuantity:1.0 andUnits:MU_Each];
        self.difficulty = DIFFICULTY_MEDIUM;
        self.tastingNotes = @"";
        return self;
    } else
        return nil;
}

- (id)addIngredient:(SaSoIngredient*)ingredient 
{
    [self.ingredients addObject:ingredient];
    return self;
}

- (id)removeIngredientNamed:(NSString *)name
{
    return self;
}

- (id)editIngredientName:(NSString *)name andMeasurement:(SaSoMeasurement *)measurement
{
    return self;
}

- (id)addStep:(NSString *)stepDescription afterStepNumber:(NSInteger *)stepNumber
{
    return self;
}

- (id)removeStepNumber:(NSInteger *)stepNumber
{
    return self;
}

- (id)editStepNumber:(NSInteger *)stepNumber withStepDescription:(NSString *)stepDescription
{
    return self;
}
@end
