//
//  JCSimpleDictionaryDataSource.m
//  SetItOff
//
//  Created by Justin Cockburn on 1/17/15.
//  Copyright (c) 2015 Justin Cockburn. All rights reserved.
//

#import "JCSimpleSectionArrayDataSource.h"

@interface JCSimpleSectionArrayDataSource ()

@property (nonatomic, strong) void (^configureCellBlock)(id cell, id item);
@property (nonatomic, strong) NSArray *items;
@property (nonatomic, strong) NSArray *titles;
@property (nonatomic, strong) NSString *cellIdentifier;

@end

@implementation JCSimpleSectionArrayDataSource

- (instancetype)initWithItems:(NSArray *)items withTitles:(NSArray *)titles withCellIdentifier:(NSString *)cellIdentifier withConfigureBlock:(void (^)(id, id))configureCellBlock
{
    self = [super init];
    if (self) {
        self.configureCellBlock = configureCellBlock;
        self.items = items;
        self.titles = titles;
        self.cellIdentifier = cellIdentifier;
        return self;
    }
    return nil;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier forIndexPath:indexPath];
    id item = [[self.items objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
    self.configureCellBlock(cell, item);
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    if (!self.items) {
        return 0;
    }
    return [self.items count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (!self.items) {
        return 0;
    }
    return [[self.items objectAtIndex:section] count];
    
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (!self.titles) {
        return @"";
    }
    return [self.titles objectAtIndex:section];
}

@end
