//
//  SaSoMeasurementTests.m
//  Sauce Source
//
//  Created by Dave Esposito on 7/26/14.
//  Copyright (c) 2014 Esposito's Hot Sauce. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SaSoMeasurement.h"

@interface SaSoMeasurementTests : XCTestCase

@end

@implementation SaSoMeasurementTests

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

- (void)BasicMeasurementInitialization
{
    SaSoMeasurement *amount = [[SaSoMeasurement alloc] initMeasurementWithQuantity:1.0 andUnits:MU_Each];
    XCTAssertEqual([amount quantity], 1.0, @"%f instance name does not match expected value", [amount quantity]);
    XCTAssertEqual([amount units], MU_Each, @"%ld instance name does not match expected value", [amount units]);
}

@end
