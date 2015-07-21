//
//  JCCoreDataHelperTests.m
//  JCUtils
//
//  Created by Justin Cockburn on 7/21/15.
//  Copyright (c) 2015 Justin Cockburn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <JCUtils/JCCoreDataHelper.h>

@interface JCCoreDataHelperTests : XCTestCase

@end

@implementation JCCoreDataHelperTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testHelperInitialization
{
    JCCoreDataHelper *helper = [[JCCoreDataHelper alloc] initWithModelName:@"PodTest"];
    
    XCTAssert([helper.modelName isEqualToString:@"PodTest"], @"Model Name Must Be Set");
}



@end
