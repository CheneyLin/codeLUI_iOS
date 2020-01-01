//
//  UIColor+RGB.m
//  appChineseWordCrossFrame
//
//  Created by Lin Cheney on 14-2-23.
//  Copyright (c) 2014年 Home. All rights reserved.
//

#import "UIColor+RGB.h"

@implementation UIColor (RGB)
+ (UIColor *)UIColorFromRGB: (NSInteger)rgbValue {
    
    UIColor *rgbColor;
    
    rgbColor = [UIColor colorWithRed: ((float)((rgbValue & 0xFF0000) >> 16)) / 255.0
                               green: ((float)((rgbValue & 0xFF00) >> 8)) / 255.0
                                blue: ((float)(rgbValue & 0xFF)) / 255.0
                               alpha: 1.0];
    
    return rgbColor;
}

+ (UIColor *)UIColorFromARGB: (NSInteger)rgbValue {
    
    UIColor *rgbColor;
    
    rgbColor = [UIColor colorWithRed: ((float)((rgbValue & 0xFF0000) >> 16)) / 255.0
                               green: ((float)((rgbValue & 0xFF00) >> 8)) / 255.0
                                blue: ((float)((rgbValue & 0xFF))) / 255.0
                               alpha: ((float)((rgbValue & 0xFF000000)>>24)) / 255.0];
    
    return rgbColor;
}

@end
