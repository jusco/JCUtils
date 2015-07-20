//
//  JCBaseDateFormatterTests.m
//  
//
//  Created by Justin Cockburn on 7/20/15.
//
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <JCUtils/JCBaseDateFormatter.h>

@interface JCBaseDateFormatterTests : XCTestCase

@end

@implementation JCBaseDateFormatterTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testStringFromDate {
    NSDate *testDate = [NSDate dateWithTimeIntervalSince1970:0];
    NSString *expected = @"Wednesday, December 31, 1969 at 7:00:00 PM Eastern Standard Time";
    NSString *actual = [JCBaseDateFormatter stringFromDate:testDate];
    XCTAssert([expected isEqualToString:actual], @"Expected: %@, Actual %@", expected, actual);
}

- (void)testDateFromString {
    NSString *testString = @"Wednesday, December 31, 1969 at 7:00:00 PM Eastern Standard Time";
    NSDate *expected = [NSDate dateWithTimeIntervalSince1970:0];
    NSDate *actual = [JCBaseDateFormatter dateFromString:testString];
    XCTAssert([expected isEqualToDate:actual], @"Expected %@, Actual %@", expected, actual);
}



@end
