//
//  JCFullDateFormatter.m
//  SetItOff
//
//  Created by Justin Cockburn on 2/2/15.
//  Copyright (c) 2015 Justin Cockburn. All rights reserved.
//

#import "JCFullDateFormatter.h"

static id sharedInstance;
static NSString *timeStampFormat = @"EEEE', 'MMMM' 'dd', 'yyyy' 'hh':'mm':'ss a";

@implementation JCFullDateFormatter

+ (JCBaseDateFormatter *)formatter
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[JCFullDateFormatter alloc] initWithFormat:timeStampFormat];
    });
    return sharedInstance;
}

@end
