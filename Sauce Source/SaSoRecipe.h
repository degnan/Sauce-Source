//
//  SaSoRecipe.h
//  Sauce Source
//
//  Created by Dave Esposito on 7/8/14.
//  Copyright (c) 2014 Esposito's Hot Sauce. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SaSoIngredient.h"

typedef NS_ENUM(NSInteger, Difficulty) {
    DIFFICULTY_VERY_EASY,
    DIFFICULTY_EASY,
    DIFFICULTY_MEDIUM,
    DIFFICULTY_HARD,
    DIFFICULTY_VERY_HARD
};

@interface SaSoRecipe : NSObject

@property (assign) NSString* name;
@property (nonatomic, copy) NSMutableArray* ingredients;
@property (nonatomic, copy) NSMutableArray* steps;
@property (assign) NSDate* prepTime;
@property (assign) NSDate* cookTime;
@property (assign) SaSoMeasurement* yield;
@property (assign) Difficulty difficulty;
@property (assign) NSString* tastingNotes;

//Ingredient Methods
- (id)addIngredient:(SaSoIngredient*)ingredient afterIngredient:(NSString*)name;
- (id)removeIngredientNamed:(NSString*)name;
- (id)editLastIngredientName:(NSString*)name andMeasurement:(SaSoMeasurement*)measurement;

//Steps Methods - Add, remove or modify recipe steps
- (id)addStep:(NSString*)stepDescription afterStepNumber:(NSInteger*)stepNumber;
- (id)removeStepNumber:(NSInteger*)stepNumber;
- (id)editStepNumber:(NSInteger*)stepNumber withStepDescription:(NSString*)stepDescription;

@end
