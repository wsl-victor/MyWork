//
//  ViewController.m
//  SLScrollViewDemo
//
//  Created by victor on 15/6/17.
//  Copyright (c) 2015年 victor. All rights reserved.
//

#import "ViewController.h"
#import "SLScrollView.h"
#import "UIColor+Extends.h"
#import "oneView.h"
#import "twoView.h"
#import "threeView.h"

#define KOrderManagerShouYeBGColor @"#e6e6e6"

#define KOrderManagerRedLineBGColor @"#fe4644"
#define KOrderManagerGrayLineBGColor @"#a6a6a6"

#define KOrderManagerNoCompleteBtnRedBGColor @"#fe4644"
#define KOrderManagerNoCompleteBtnGrayBGColor @"#a6a6a6"

#define KOrderManagerTabBarBlackBGColor @"#333333"
#define KOrderManagerTabBarRedBGColor @"#fe4644"

#define KBlackFontBGColor @"#333333"//黑色字体颜色
#define KGrayFontBGColor @"#515151"//灰色字体颜色
@interface ViewController ()

@property (nonatomic,strong) SLScrollView *slSv;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title=@"订单列表demo";
    
     NSArray *views =@[[oneView new],[twoView new],[threeView  new]];
     NSArray *names =@[@"  还没完成  ",@"  支付完成  ",@"  已经完成  "];
    self.slSv =[SLScrollView scrollWithFrame:CGRectMake(0, 20, [UIScreen mainScreen].bounds.size.width,[UIScreen mainScreen].bounds.size.height-120) withViews:views withButtonNames:names withThreeAnimation:111];//三中动画都选择
    
    //自定义各种属性。。打开查看
    self.slSv.xl_topBackImage =[UIImage imageNamed:@"10.jpg"];
    self.slSv.xl_topBackColor =[UIColor whiteColor];
    self.slSv.xl_sliderColor =[UIColor  colorWithHex:KOrderManagerRedLineBGColor];
    self.slSv.xl_buttonColorNormal = [UIColor colorWithHex:KBlackFontBGColor];
    self.slSv.xl_buttonColorSelected =[UIColor colorWithHex:KOrderManagerRedLineBGColor];
    
    self.slSv.xl_buttonFont =15;
    self.slSv.xl_buttonToSlider =50;
    self.slSv.xl_sliderHeight =2;
    self.slSv.xl_topHeight =60;
    self.slSv.xl_isSliderCorner =NO;
    
    //是否有动画
    self.slSv.xl_isMoveButton = NO;//滑动视图 移动按钮动画开关
    self.slSv.xl_isScaleButton = NO;//点击未被选中的按钮 缩放按钮动画开关
    self.slSv.xl_isMoveSlider = YES;//点击未被选中的按钮 滑动滑块动画开关
    [self.view addSubview:self.slSv];
  
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
