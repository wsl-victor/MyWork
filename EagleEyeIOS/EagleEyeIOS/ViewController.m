//
//  ViewController.m
//  EagleEyeIOS
//
//  Created by victor on 15/6/11.
//  Copyright (c) 2015年 victor. All rights reserved.
//

#import "ViewController.h"
#import <CoreLocation/CoreLocation.h>
#import "MDJHttpTool.h"
#define  cretateService @"http://api.map.baidu.com/trace/v1/service/create"
#define listAllService @"http://api.map.baidu.com/trace/v1/service/list"


#define cretateTrack @"http://api.map.baidu.com/trace/v1/track/create"

@interface ViewController ()<CLLocationManagerDelegate>{
    CLLocationManager *locationManger;
    int i;
}
@property (nonatomic,strong) UILabel *one;


@property (nonatomic,strong) UIButton *ontbt;
@property (nonatomic,strong) UIButton *twobt;
@property (nonatomic,strong) UIButton *threebt;


@property (nonatomic,strong) UIButton *ontbt1;
@property (nonatomic,strong) UIButton *twobt2;
@property (nonatomic,strong) UIButton *threebt3;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *onebt=[[UIButton alloc] initWithFrame:CGRectMake(0, 100, 100, 30)];
    [onebt setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [onebt setTitle:@"回家" forState:UIControlStateNormal];
    onebt.tag=1;
    [onebt setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:onebt];
    self.ontbt=onebt;
    [onebt addTarget:self action:@selector(onRsetClick:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *onebt1=[[UIButton alloc] initWithFrame:CGRectMake(150, 100, 100, 30)];
    [onebt1 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [onebt1 setBackgroundColor:[UIColor blueColor]];
    [onebt1 setTitle:@"回家停止" forState:UIControlStateNormal];
    onebt1.tag=4;
    [self.view addSubview:onebt1];
     [onebt1 addTarget:self action:@selector(onRsetClick:) forControlEvents:UIControlEventTouchUpInside];
    self.ontbt1=onebt1;
 
   
    
    UIButton *twobt=[[UIButton alloc] initWithFrame:CGRectMake(0, 150, 100, 30)];
    [twobt setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [twobt setTitle:@"上班" forState:UIControlStateNormal];
    twobt.tag=2;
    [twobt setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:twobt];
    [twobt addTarget:self action:@selector(onRsetClick:) forControlEvents:UIControlEventTouchUpInside];
    self.ontbt=twobt;
    
    
    UIButton *twobt2=[[UIButton alloc] initWithFrame:CGRectMake(150, 150, 100, 30)];
    [twobt2 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [twobt2 setBackgroundColor:[UIColor blueColor]];

    [twobt2 setTitle:@"上班停止" forState:UIControlStateNormal];
    twobt2.tag=5;
    [self.view addSubview:twobt2];
    [twobt2 addTarget:self action:@selector(onRsetClick:) forControlEvents:UIControlEventTouchUpInside];
    self.twobt2=twobt2;

    UIButton *threebt=[[UIButton alloc] initWithFrame:CGRectMake(0, 200, 100, 30)];
    [threebt setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [threebt setBackgroundColor:[UIColor blueColor]];
    [threebt setTitle:@"中间" forState:UIControlStateNormal];
     threebt.tag=3;
    [self.view addSubview:threebt];
    [threebt addTarget:self action:@selector(onRsetClick:) forControlEvents:UIControlEventTouchUpInside];
    self.threebt=threebt;
    
    UIButton *threebt3=[[UIButton alloc] initWithFrame:CGRectMake(150, 200, 150, 30)];
    [threebt3 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [threebt3 setTitle:@"中间停止" forState:UIControlStateNormal];
    threebt3.tag=6;
    [threebt3 setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:threebt3];
     [threebt3 addTarget:self action:@selector(onRsetClick:) forControlEvents:UIControlEventTouchUpInside];
    self.threebt3=threebt3;
   
    
    UILabel *one=[[UILabel alloc] initWithFrame:CGRectMake(30, 210, 100, 60)];
    one.textColor=[UIColor redColor];
    [self.view addSubview:one];
    self.one=one;
}


-(void)onRsetClick:(UIButton *)bt
{
    if (bt.tag==1) {
        //回家
        NSDate *datenow = [NSDate date];
        NSString *nsstr=[NSString stringWithFormat:@"回家%f",[datenow timeIntervalSince1970]];
        NSUserDefaults *ud=[NSUserDefaults standardUserDefaults];
        [ud setObject:nsstr  forKey:@"oneone"];
        [ud synchronize];
        [[NSNotificationCenter defaultCenter] postNotificationName:@"startDateLocationInfo" object:nil];
        
    }else if (bt.tag==4){
        //回家停止
        [[NSNotificationCenter defaultCenter] postNotificationName:@"stopDateLocationInfo" object:nil];
        

        
    }else if (bt.tag==2){
        //上班
        NSDate *datenow = [NSDate date];
        NSString *nsstr=[NSString stringWithFormat:@"上班%f",[datenow timeIntervalSince1970]];
        NSUserDefaults *ud=[NSUserDefaults standardUserDefaults];
        [ud setObject:nsstr  forKey:@"oneone"];
        [ud synchronize];
        [[NSNotificationCenter defaultCenter] postNotificationName:@"startDateLocationInfo" object:nil];
        

        
    }else if (bt.tag==5){
       //上班停止
        [[NSNotificationCenter defaultCenter] postNotificationName:@"stopDateLocationInfo" object:nil];
        

    }
    else if (bt.tag==3){
      //中间
        NSDate *datenow = [NSDate date];
        NSString *nsstr=[NSString stringWithFormat:@"中间%f",[datenow timeIntervalSince1970]];
        NSUserDefaults *ud=[NSUserDefaults standardUserDefaults];
        [ud setObject:nsstr  forKey:@"oneone"];
        [ud synchronize];
        [[NSNotificationCenter defaultCenter] postNotificationName:@"startDateLocationInfo" object:nil];
        

        
    }
    else if (bt.tag==6){
      //中间停止
        [[NSNotificationCenter defaultCenter] postNotificationName:@"stopDateLocationInfo" object:nil];
        

    }

}

//-(void)ddd
//{
//    if ([CLLocationManager locationServicesEnabled]) {
//        locationManger = [[CLLocationManager alloc] init];
//        locationManger.delegate=self;
//        locationManger.desiredAccuracy=kCLLocationAccuracyBest;
//        locationManger.distanceFilter=10;
//        if([locationManger respondsToSelector:@selector(requestAlwaysAuthorization)]) {
//            [locationManger requestAlwaysAuthorization]; // 永久授权
//            [locationManger requestWhenInUseAuthorization]; //使用中授权
//        }
//        [locationManger startUpdatingLocation];
//    }
//}

-(void)creteFile
{
    NSFileManager *fm=[NSFileManager defaultManager];
    NSArray *path=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *listfile=[[path objectAtIndex:0] stringByAppendingPathComponent:@"text.plist"];
    [fm createFileAtPath:listfile contents:nil attributes:nil];
    NSMutableDictionary *dict=[NSMutableDictionary dictionary];
    dict[@"longitude"]=[NSNumber numberWithFloat:2.1111];
    dict[@"latitude"]=[NSNumber numberWithFloat:2.1111];
    dict[@"flag"]=[NSNumber numberWithInt:100];
    //把数据写入plist文件
    NSArray *ar=[NSArray arrayWithObject:dict];
    [ar writeToFile:listfile atomically:YES];
}

#pragma -mark- 创建track

-(void)createTracklatitude:(float)a blongitude:(float)b
{
    NSMutableDictionary *dict=[NSMutableDictionary dictionary];
    dict[@"ak"]=@"xR8ZPmenW5hfSG742s9AdkUY";
    dict[@"service_id"]=@101118;
    dict[@"latitude"]=[NSNumber numberWithFloat:a];
    dict[@"longitude"]=[NSNumber numberWithFloat:b];
    dict[@"coord_type"]=@1;
    NSDate *datenow = [NSDate date];
    dict[@"loc_time"]=[NSNumber numberWithInt:[datenow timeIntervalSince1970]];
     NSUserDefaults *userd=[NSUserDefaults standardUserDefaults];
    dict[@"track_name"]=[userd objectForKey:@"oneone"];
    [MDJHttpTool post:cretateTrack params:dict success:^(id responseObj) {
    
    } failure:^(NSError *error) {
        
    }];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
