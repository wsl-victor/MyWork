//
//  UIColor+Extends.h
//  NaiTangStrategyGame
//
//  Created by sandy on 14-5-14.
//  Copyright (c) 2014年 sandy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Extends)

+ (UIColor *) colorWithHex:(NSString *)hexColor;

+ (UIColor*)colorWithHue:(CGFloat)h saturation:(CGFloat)s value:(CGFloat)v alpha:(CGFloat)a;
//  十六进制字符串表示的颜色转换
+ (UIColor *) colorWithHexString: (NSString *)color;

- (UIColor*)multiplyHue:(CGFloat)hd saturation:(CGFloat)sd value:(CGFloat)vd;

- (UIColor*)addHue:(CGFloat)hd saturation:(CGFloat)sd value:(CGFloat)vd;

- (UIColor*)copyWithAlpha:(CGFloat)newAlpha;

/**
 * Uses multiplyHue to create a lighter version of the color.
 */
- (UIColor*)highlight;

/**
 * Uses multiplyHue to create a darker version of the color.
 */
- (UIColor*)shadow;

- (CGFloat)hue;

- (CGFloat)saturation;

- (CGFloat)value;

@end
