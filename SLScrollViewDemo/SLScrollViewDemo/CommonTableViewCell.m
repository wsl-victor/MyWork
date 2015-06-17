//
//  CommonTableViewCell.m
//  SLScrollViewDemo
//
//  Created by victor on 15/6/17.
//  Copyright (c) 2015年 victor. All rights reserved.
//

#import "CommonTableViewCell.h"
#import "MJRefresh.h"
#define screen_width  [UIScreen mainScreen].bounds.size.width
#define screen_height  [UIScreen mainScreen].bounds.size.height
@interface CommonTableViewCell ()<UITableViewDelegate,UITableViewDataSource>{
    int page_current;//当前是哪一页
}

@end

@implementation CommonTableViewCell

-(NSMutableArray *)commonArr
{
    if (_commonArr==nil) {
        _commonArr=[NSMutableArray array];
    }
    return _commonArr;
}



-(instancetype)initWithFrame:(CGRect)frame{
    self=[super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor=[UIColor whiteColor];
        UITableView *commonTableView=[[UITableView alloc] initWithFrame:CGRectMake(0, 0, screen_width, screen_height-113-45) style:UITableViewStylePlain];
        commonTableView.dataSource=self;
        commonTableView.delegate=self;
        commonTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        commonTableView.separatorStyle = NO;
        [self addSubview:commonTableView];
        self.commonTableView=commonTableView;
        [self setupRefresh];
    }
    return self;
}


-(void)setupRefresh
{
    [self.commonTableView addHeaderWithTarget:self action:@selector(headerRereshingRefresh)];
    [self.commonTableView addFooterWithTarget:self action:@selector(footerRereshingRefresh)];
    [self.commonTableView headerBeginRefreshing];
}


-(void)headerRereshingRefresh
{
    page_current=1;
    [self setNetworkRequest:page_current];
}
-(void)footerRereshingRefresh
{
    page_current=page_current+1;
    [self setNetworkRequest:page_current];
}

-(void)setNetworkRequest:(int)page
{
    
}

#pragma -mark- UITableViewDelegate ,UITableViewDataSource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"elf.commonArr.count==%lu",self.commonArr.count);
    return self.commonArr.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"celllist"];
    if (cell==nil) {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"celllist"];
    }
    cell.textLabel.text=self.commonArr[indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

@end
