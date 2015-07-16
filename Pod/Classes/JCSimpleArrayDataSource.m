//
//  JCSimpleArrayDataSource.m
//  SetItOff
//
//  Created by Justin Cockburn on 12/27/14.
//  Copyright (c) 2014 Justin Cockburn. All rights reserved.
//

#import "JCSimpleArrayDataSource.h"

@interface JCSimpleArrayDataSource ()

@property (nonatomic, strong) void (^configureCellBlock)(id cell, id item);
@property (nonatomic, strong) NSArray *items;
@property (nonatomic, strong) NSString *cellIdentifier;

@end

@implementation JCSimpleArrayDataSource

- (instancetype)initWithItems:(NSArray *)items withCellIdentifier:(NSString *)cellIdentifier withConfigureBlock:(void(^)(id cell, id item))configureCellBlock
{
    self = [super init];
    if (self) {
        self.configureCellBlock = configureCellBlock;
        self.items = items;
        self.cellIdentifier = cellIdentifier;
        return self;
    }
    return nil;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier forIndexPath:indexPath];
    id item = [self.items objectAtIndex:indexPath.row];
    self.configureCellBlock(cell, item);
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (self.items) {
        return [self.items count];
    }
    return 0;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}



@end
