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

- (void)BasicRecipeInitialization
{
    SaSoRecipe *recipe1 = [[SaSoRecipe alloc] init];
    [recipe1 setName:@"Unholy Ghost"];
    XCTAssertEqual([recipe1 name], @"Unholy Ghost", @"%@ instance name does not match expected value", [recipe1 name]);
}

@end
