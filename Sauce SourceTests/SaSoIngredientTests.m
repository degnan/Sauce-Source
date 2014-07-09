//
//  SaSoIngredientTests.m
//  Sauce Source
//
//  Created by Dave Esposito on 7/8/14.
//  Copyright (c) 2014 Esposito's Hot Sauce. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SaSoIngredient.h"

@interface SaSoIngredientTests : XCTestCase

@end

@implementation SaSoIngredientTests

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

- (void)testBasicIngredientInitialization
{
    SaSoMeasurement *amount = [[SaSoMeasurement alloc] initMeasurementWithQuantity:1.0 andUnits:MU_Each];
    SaSoIngredient *test = [[SaSoIngredient alloc] initWithName:@"Habanero" andMeasurement:amount];
    XCTAssertEqual([test name], @"Habanero", @"%@ instance name does not match expected value", [test name]);
    XCTAssertEqual([[test measurement]quantity], 1.0, @"%1.1f instance name does not match expected value", [[test measurement]quantity]);
    XCTAssertEqual([[test measurement]units], MU_Each, @"%ld instance name does not match expected value", [[test measurement]units]);
}

-(void)testUpdateAllIngredients
{
    SaSoMeasurement *amount = [[SaSoMeasurement alloc] initMeasurementWithQuantity:1.0 andUnits:MU_Each];
    SaSoIngredient *test = [[SaSoIngredient alloc] initWithName:@"Habanero" andMeasurement:amount];
    [amount updateMeasurementQuantity:2.0 andUnits:MU_Ounce];
    [test updateIngredient:@"Jalepeno" andMeasurement:amount];
    XCTAssertEqual([test name], @"Jalepeno", @"%@ instance name does not match expected value", [test name]);
    XCTAssertEqual([[test measurement]quantity], 2.0, @"%1.1f instance name does not match expected value", [[test measurement]quantity]);
    XCTAssertEqual([[test measurement]units], MU_Ounce, @"%ld instance units does not match expected value", [[test measurement ]units]);
}

-(void)testUpdateIngredientMeasurement
{
    SaSoMeasurement *amount = [[SaSoMeasurement alloc] initMeasurementWithQuantity:1.0 andUnits:MU_Each];
    SaSoIngredient *test = [[SaSoIngredient alloc] initWithName:@"Habanero" andMeasurement:amount];
    [amount updateMeasurementQuantity:2.0 andUnits:MU_Ounce];
    [test updateIngredientMeasurement:amount];
    XCTAssertEqual([test name], @"Habanero", @"%@ instance name does not match expected value", [test name]);
    XCTAssertEqual([[test measurement]quantity], 2.0, @"%1.1f instance name does not match expected value", [[test measurement]quantity]);
    XCTAssertEqual([[test measurement]units], MU_Ounce, @"%ld instance units does not match expected value", [[test measurement]units]);
}

@end
