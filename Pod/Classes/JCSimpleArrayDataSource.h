//
//  JCSimpleArrayDataSource.h
//  SetItOff
//
//  Created by Justin Cockburn on 12/27/14.
//  Copyright (c) 2014 Justin Cockburn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface JCSimpleArrayDataSource : NSObject <UITableViewDataSource>

- (instancetype)initWithItems:(NSArray *)items withCellIdentifier:(NSString *)cellIdentifier withConfigureBlock:(void(^)(id cell, id item))configureCellBlock;

@end
