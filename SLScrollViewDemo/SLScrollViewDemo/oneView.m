//
//  oneView.m
//  SLScrollViewDemo
//
//  Created by victor on 15/6/17.
//  Copyright (c) 2015年 victor. All rights reserved.
//

#import "oneView.h"

@implementation oneView


-(void)setNetworkRequest:(int)page
{
    NSArray *arr=@[@"123",@"456",@"789"];
    [self.commonArr addObjectsFromArray:arr];
    [self.commonTableView reloadData];
    [self.commonTableView  headerEndRefreshing];
}

@end
