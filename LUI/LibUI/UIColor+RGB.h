//
//  UIColor+RGB.h
//  appChineseWordCrossFrame
//
//  Created by Lin Cheney on 14-2-23.
//  Copyright (c) 2014年 Home. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (RGB)
+ (UIColor *)UIColorFromRGB: (NSInteger)rgbValue ;

+ (UIColor *)UIColorFromARGB: (NSInteger)argbValue;
@end
