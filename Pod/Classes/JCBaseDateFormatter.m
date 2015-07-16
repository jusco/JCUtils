//
//  JCBaseDateFormatter.m
//  SetItOff
//
//  Created by Justin Cockburn on 2/1/15.
//  Copyright (c) 2015 Justin Cockburn. All rights reserved.
//

#import "JCBaseDateFormatter.h"

static id sharedInstance;

@implementation JCBaseDateFormatter

- (id)init
{
    self = [super init];
    if (self) {
        [self setDateStyle:NSDateFormatterFullStyle];
        [self setTimeStyle:NSDateFormatterFullStyle];
    }
    return self;
}

- (id)initWithFormat:(NSString *)format
{
    return [self initWithFormat:format forTimeZone:[NSTimeZone localTimeZone]];
}

- (id)initWithFormat:(NSString *)format forTimeZone:(NSTimeZone *)timeZone
{
    self = [super init];
    if (self) {
        [self setLocale:[NSLocale currentLocale]];
        [self setTimeZone:timeZone];
        [self setDateFormat:format];
    }
    return self;
}

+ (JCBaseDateFormatter *)formatter
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[JCBaseDateFormatter alloc] init];
    });
    return sharedInstance;
}

+ (NSString *)stringFromDate:(NSDate *)date
{
    // self points to the class in a class method, so this works with inheritance
    return [[self formatter] stringFromDate:date];
}

+ (NSDate *)dateFromString:(NSString *)string
{
    // self points to the class in a class method, so this works with inheritance
    return [[self formatter] dateFromString:string];
}

@end
