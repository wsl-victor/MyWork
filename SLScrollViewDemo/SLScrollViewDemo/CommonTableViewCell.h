//
//  CommonTableViewCell.h
//  SLScrollViewDemo
//
//  Created by victor on 15/6/17.
//  Copyright (c) 2015年 victor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MJRefresh.h"
@interface CommonTableViewCell : UIView
@property (nonatomic,strong) NSMutableArray *commonArr;
@property (nonatomic,strong) UITableView *commonTableView;
-(void)setNetworkRequest:(int)page;
@end
