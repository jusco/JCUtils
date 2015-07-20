//
//  JCFullDateFormatterTests.m
//  JCUtils
//
//  Created by Justin Cockburn on 7/20/15.
//  Copyright (c) 2015 Justin Cockburn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <JCUtils/JCFullDateFormatter.h>

@interface JCFullDateFormatterTests : XCTestCase

@end

@implementation JCFullDateFormatterTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testStringToDate {
    NSDate *testDate = [NSDate dateWithTimeIntervalSince1970:0];
    NSString *expected = @"Wednesday, December 31, 1969 07:00:00 PM"; //Adjusted for EST
    NSString *actual = [JCFullDateFormatter stringFromDate:testDate];
    XCTAssert([expected isEqualToString:actual], @"Actual %@, Expected %@", actual, expected);
    
}

- (void)testDateToString
{
    NSString *testString = @"Wednesday, December 31, 1969 07:00:00 PM";
    NSDate *expected = [NSDate dateWithTimeIntervalSince1970:0];
    NSDate *actual = [JCFullDateFormatter dateFromString:testString];
    XCTAssert([expected isEqual:actual], @"Actual %@, Expected %@", actual, expected);

}


@end
