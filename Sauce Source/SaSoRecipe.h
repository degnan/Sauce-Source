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
@property (nonatomic, retain) NSMutableArray* ingredients;
@property (nonatomic, retain) NSMutableArray* steps;
@property (assign) NSDate* prepTime;
@property (assign) NSDate* cookTime;
@property (strong) SaSoMeasurement* yield;
@property (assign) Difficulty difficulty;
@property (assign) NSString* tastingNotes;

- (id)init;

//Ingredient Methods
- (id)addIngredient:(SaSoIngredient*)ingredient;
- (id)removeIngredientNamed:(NSString*)name;
- (id)editIngredientName:(NSString*)name andMeasurement:(SaSoMeasurement*)measurement;

//Steps Methods - Add, remove or modify recipe steps
- (id)addStep:(NSString*)stepDescription afterStepNumber:(NSInteger*)stepNumber;
- (id)removeStepNumber:(NSInteger*)stepNumber;
- (id)editStepNumber:(NSInteger*)stepNumber withStepDescription:(NSString*)stepDescription;

@end
