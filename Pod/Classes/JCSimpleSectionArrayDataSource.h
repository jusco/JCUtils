//
//  JCSimpleDictionaryDataSource.h
//  SetItOff
//
//  Created by Justin Cockburn on 1/17/15.
//  Copyright (c) 2015 Justin Cockburn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface JCSimpleSectionArrayDataSource : NSObject <UITableViewDataSource>

- (instancetype)initWithItems:(NSArray *)items withTitles:(NSArray *)titles withCellIdentifier:(NSString *)cellIdentifier withConfigureBlock:(void(^)(id cell, id item))configureCellBlock;

@end
