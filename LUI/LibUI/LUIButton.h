//
//  LUIButton.h
//  appZSXD
//
//  Created by Cheney Lin on 14-7-11.
//  Copyright (c) 2014年 70Apps Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LUIButton : UIView

-(id)initWithFrame:(CGRect)frame tag:(int)tag target:(id)target seletor:(SEL)seletor;

-(id)initButtonText:(NSString *)strContent frame:(CGRect)frame size:(int)size family:(NSString *)family color:(UIColor*)color hlcolor:(UIColor *)color2 shadowcolor:(UIColor *)color3 tag:(int)tag target:(id)target seletor:(SEL)seletor;

-(id)initButton:(NSString *)strContent frame:(CGRect)frame size:(int)size tinyColor:(UIColor *)tinyColor color:(UIColor*)color hlcolor:(UIColor *)color2 shadowcolor:(UIColor *)color3 tag:(int)tag target:(id)target seletor:(SEL)seletor;

-(id)initButtonImage:(NSString *)strContent frame:(CGRect)frame size:(int)size imageBG:(NSString *)imageBG imageIcon:(NSString *)imageIcon imageIconSize:(int)imageIconSize color:(UIColor*)color  hlcolor:(UIColor *)color2 shadowcolor:(UIColor *)color3 tag:(int)tag target:(id)target seletor:(SEL)seletor;

-(id)initButtonImageOnly:(NSString *)image frame:(CGRect)frame imageHL:(NSString *)imageHL tag:(int)tag target:(id)target seletor:(SEL)seletor;

-(id)initButton:(NSString *)strContent frame:(CGRect)frame size:(int)size fontColor:(UIColor *)fontColor fontColorHL:(UIColor*)fontColorHL cornerRadius:(int)cornerRadius bgColor:(UIColor *)bgColor bgColorHL:(UIColor *)bgColorHL borderSize:(int)borderSize borderColor:(UIColor *)borderColor borderColorHL:(UIColor *)borderColorHL tag:(int)tag target:(id)target seletor:(SEL)seletor;

-(id)initButtonIconBGColor:(NSString *)icon frame:(CGRect)frame bgColor:(UIColor *)bgColor bgColorHL:(UIColor *)bgColorHL iconHeight:(CGFloat)iconHeight cornerRadius:(CGFloat)cornerRadius tag:(int)tag target:(id)target seletor:(SEL)seletor;
@end
