//
//  SaSoRecipe.h
//  Sauce Source
//
//  Created by Dave Esposito on 7/8/14.
//  Copyright (c) 2014 Esposito's Hot Sauce. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SaSoRecipe : NSObject

@property (nonatomic, retain) NSMutableArray* ingredients;
@property (nonatomic, retain) NSMutableArray* steps;
@property (nonatomic, retain) NSDate* prepTime;
@property (nonatomic, retain) NSDate* cookTime;


@end
