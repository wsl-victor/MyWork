//
//  AppDelegate.h
//  EagleEyeIOS
//
//  Created by victor on 15/6/11.
//  Copyright (c) 2015年 victor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LocationTracker.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property LocationTracker * locationTracker;
@property (nonatomic) NSTimer* locationUpdateTimer;


@end

