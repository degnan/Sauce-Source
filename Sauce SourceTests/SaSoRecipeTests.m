//
//  SaSoRecipeTests.m
//  Sauce Source
//
//  Created by Dave Esposito on 7/26/14.
//  Copyright (c) 2014 Esposito's Hot Sauce. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SaSoRecipe.h"

@interface SaSoRecipeTests : XCTestCase

@end

@implementation SaSoRecipeTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testBasicRecipeInitialization
{
    SaSoRecipe *recipe1 = [[SaSoRecipe alloc] init];
    [recipe1 setName:@"Unholy Ghost"];
    XCTAssertEqual([recipe1 name], @"Unholy Ghost", @"%@ instance name does not match expected value", [recipe1 name]);
}

- (void)testAddingFirstIngredient
{
    SaSoRecipe *recipe1 = [[SaSoRecipe alloc] init];
    SaSoIngredient *pepper = [[SaSoIngredient alloc] initWithName:@"Habanero" andMeasurement:[[SaSoMeasurement alloc] initMeasurementWithQuantity:10.0 andUnits:MU_Each]];
    
    [recipe1.ingredients addObject:pepper];
    XCTAssertEqual([recipe1.ingredients count], 1, @"Didn't add ingredient for some reason.");
}

- (void)testAddingAdditionalIngredients
{
    SaSoRecipe *recipe1 = [[SaSoRecipe alloc] init];
    SaSoIngredient *pepper = [[SaSoIngredient alloc] initWithName:@"Habaner" andMeasurement:[[SaSoMeasurement alloc] initMeasurementWithQuantity:1.0 andUnits:MU_Each]];
    SaSoIngredient *garlic = [[SaSoIngredient alloc] initWithName:@"Garlic" andMeasurement:[[SaSoMeasurement alloc] initMeasurementWithQuantity:0.25 andUnits:MU_Cup]];
    
    [recipe1.ingredients addObject:pepper];
    [recipe1.ingredients addObject:garlic];
    XCTAssertEqual([recipe1.ingredients count], 2, @"Didn't add ingredient for some reason.");
}
@end
