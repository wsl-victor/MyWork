//
//  twoView.m
//  SLScrollViewDemo
//
//  Created by victor on 15/6/17.
//  Copyright (c) 2015年 victor. All rights reserved.
//

#import "twoView.h"

@implementation twoView

-(void)setNetworkRequest:(int)page
{
    NSArray *arr=@[@"abc",@"efg",@"hij"];
    [self.commonArr addObjectsFromArray:arr];
    [self.commonTableView reloadData];
     [self.commonTableView  headerEndRefreshing];
}


@end
