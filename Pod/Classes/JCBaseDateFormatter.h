//
//  JCBaseDateFormatter.h
//  SetItOff
//
//  Created by Justin Cockburn on 2/1/15.
//  Copyright (c) 2015 Justin Cockburn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JCBaseDateFormatter : NSDateFormatter

- (id)initWithFormat:(NSString *)format;
- (id)initWithFormat:(NSString *)format forTimeZone:(NSTimeZone *)timeZone;

// Override this method to return a configured date formatter singleton
+ (JCBaseDateFormatter *)formatter;

+ (NSString *)stringFromDate:(NSDate *)date;
+ (NSDate *)dateFromString:(NSString *)string;

@end
