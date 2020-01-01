//
//  SystemUILabel.h
//  appZSXD
//
//  Created by Cheney Lin on 14-7-16.
//  Copyright (c) 2014年 70Apps Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SystemUILabel : UIView

-(id)initLabel:(NSString *)strContent frame:(CGRect)frame size:(int)size color:(UIColor*)color tag:(int)tag;

-(id)initLabel:(NSString *)strContent frame:(CGRect)frame size:(int)size color:(UIColor*)color  hlcolor:(UIColor *)color2 shadowcolor:(UIColor *)color3 lines:(int)lines tag:(int)tag;

-(id)initLabel:(NSString *)strContent bold:(BOOL)isBold font:(NSString *)fontFamily mutilLine:(BOOL)isMutilLine frame:(CGRect)frame size:(int)size color:(UIColor*)color  hlcolor:(UIColor *)color2 shadowcolor:(UIColor *)color3 tag:(int)tag;
@end
