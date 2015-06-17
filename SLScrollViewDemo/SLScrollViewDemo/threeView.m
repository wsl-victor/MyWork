//
//  threeView.m
//  SLScrollViewDemo
//
//  Created by victor on 15/6/17.
//  Copyright (c) 2015年 victor. All rights reserved.
//

#import "threeView.h"

@implementation threeView

-(void)setNetworkRequest:(int)page
{
    NSArray *arr=@[@"1q",@"2f",@"0h"];
    [self.commonArr addObjectsFromArray:arr];
    [self.commonTableView reloadData];
    [self.commonTableView  headerEndRefreshing];
}

@end
