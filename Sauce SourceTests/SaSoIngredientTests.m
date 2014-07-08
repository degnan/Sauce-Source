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
    SaSoIngredient *test = [[SaSoIngredient alloc] initWithName:@"Habanero" units:MU_Each];
    XCTAssertEqual([test name], @"Habanero", @"%@ instance name does not match expected value", [test name]);
    XCTAssertEqual([test units], 0, @"%ld instance units does not match expected value", [test units]);
}

@end
