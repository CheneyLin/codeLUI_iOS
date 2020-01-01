//
//  LUIButton.m
//  appZSXD
//
//  Created by Cheney Lin on 14-7-11.
//  Copyright (c) 2014年 70Apps Studio. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "UIImageView+WebCache.h"
#import "UIImage+extra.h"
#import "UIGlossyButton.h"

#import "LUIButton.h"

@implementation LUIButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(id)initButtonText:(NSString *)strContent frame:(CGRect)frame size:(int)size family:(NSString *)family color:(UIColor*)color hlcolor:(UIColor *)color2 shadowcolor:(UIColor *)color3 tag:(int)tag target:(id)target seletor:(SEL)seletor
{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        
        UIButton* b = [[UIButton alloc]initWithFrame:frame];
        [b setTitle:strContent forState:UIControlStateNormal];
        
        if(family!=nil)
        {
            [b.titleLabel setFont:[UIFont fontWithName:family size:size]];
        }
        else
        {
            [b.titleLabel setFont:[UIFont systemFontOfSize:size]];
        }
        [b setTitleColor:color forState:UIControlStateNormal];
        
        if (color2!=nil)
        {
            [b setTitleColor:color2 forState:UIControlStateHighlighted];
        }
        b.tag=tag;
        
        [b addTarget:target action:seletor forControlEvents:UIControlEventTouchUpInside];
        
        self=(LUIButton *)b;
    }
    return self;


}


-(id)initButton:(NSString *)strContent frame:(CGRect)frame size:(int)size fontColor:(UIColor *)fontColor fontColorHL:(UIColor*)fontColorHL cornerRadius:(int)cornerRadius bgColor:(UIColor *)bgColor bgColorHL:(UIColor *)bgColorHL borderSize:(int)borderSize borderColor:(UIColor *)borderColor borderColorHL:(UIColor *)borderColorHL tag:(int)tag target:(id)target seletor:(SEL)seletor
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        UIGlossyButton* b = [[UIGlossyButton alloc]initWithFrame:frame];
        
        if (fontColorHL!=nil)
        {
            [b setTitleColor:fontColorHL forState:UIControlStateHighlighted];
        }
        [b.titleLabel setFont:[UIFont boldSystemFontOfSize:size]];
        [b setTitleColor:fontColor forState:UIControlStateNormal];
        [b setTitle:strContent forState:UIControlStateNormal];
        
        [b setActionSheetButtonWithColor:bgColor];
        [b setGradientType:kUIGlossyButtonGradientTypeSolid];
        b.tag=tag;
        
        [b addTarget:target action:seletor forControlEvents:UIControlEventTouchUpInside];
        
        self=(LUIButton *)b;
    }
    return self;

}
-(id)initButton:(NSString *)strContent frame:(CGRect)frame size:(int)size tinyColor:(UIColor *)tinyColor color:(UIColor*)color  hlcolor:(UIColor *)color2 shadowcolor:(UIColor *)color3 tag:(int)tag target:(id)target seletor:(SEL)seletor

{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        UIGlossyButton* b = [[UIGlossyButton alloc]initWithFrame:frame];
        if (color3!=nil) {
            
            [b.titleLabel setShadowOffset:CGSizeMake(0, 1)];
            [b setTitleShadowColor:color3 forState:UIControlStateNormal];
        }
        if (color2!=nil)
        {
            [b setTitleColor:color2 forState:UIControlStateHighlighted];
        }
        [b.titleLabel setFont:[UIFont boldSystemFontOfSize:size]];
        [b setTitleColor:color forState:UIControlStateNormal];
        [b setTitle:strContent forState:UIControlStateNormal];
        
        [b setActionSheetButtonWithColor:tinyColor];
        b.tag=tag;
        
        [b addTarget:target action:seletor forControlEvents:UIControlEventTouchUpInside];
        
        self=(LUIButton *)b;
    }
    return self;
}

-(id)initButtonImage:(NSString *)strContent frame:(CGRect)frame size:(int)size imageBG:(NSString *)imageBG imageIcon:(NSString *)imageIcon imageIconSize:(int)imageIconSize color:(UIColor*)color  hlcolor:(UIColor *)color2 shadowcolor:(UIColor *)color3 tag:(int)tag target:(id)target seletor:(SEL)seletor

{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        UIButton* b = [[UIButton alloc]initWithFrame:frame];
        if (strContent!=nil) {
            
            if (color3!=nil) {
                
                [b.titleLabel setShadowOffset:CGSizeMake(0, 1)];
                [b setTitleShadowColor:color3 forState:UIControlStateNormal];
            }
            if (color2!=nil)
            {
                [b setTitleColor:color2 forState:UIControlStateHighlighted];
            }
            [b.titleLabel setFont:[UIFont boldSystemFontOfSize:size]];
            [b setTitleColor:color forState:UIControlStateNormal];
            [b setTitle:strContent forState:UIControlStateNormal];
            
            if (imageIcon!=nil) {
                [b setTitleEdgeInsets:UIEdgeInsetsMake(frame.size.height-(frame.size.height-imageIconSize)/2, -1*imageIconSize,(frame.size.height-imageIconSize)*0.75, 0.0)];
            }
            
        }
        if (imageIcon!=nil) {
            [b setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@",imageIcon]] forState:UIControlStateNormal];
            [b setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_hl",imageIcon]] forState:UIControlStateHighlighted];
            
            if (strContent!=nil) {
                [b setImageEdgeInsets:UIEdgeInsetsMake(-(frame.size.height-imageIconSize)/2, 0.0, 0.0,-b.titleLabel.bounds.size.width)];
            }
            //            Left inset is the negative of image width.
            //           // Left inset is the negative of image width.
            
            
            //         // Right inset is the negative of text bounds width.
            
        }
        if (imageBG !=nil) {
            [b setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@",imageBG]] forState:UIControlStateNormal];
            [b setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_hl",imageBG]] forState:UIControlStateHighlighted];
        }
        //[b setBackgroundColor:[UIColor lightGrayColor]];
        
        b.tag=tag;
        
        [b addTarget:target action:seletor forControlEvents:UIControlEventTouchUpInside];
        
        self=(LUIButton *)b;
    }
    return self;
}



-(id)initButtonImage2:(NSString *)strContent frame:(CGRect)frame size:(int)size imageBG:(NSString *)imageBG imageIcon:(NSString *)imageIcon color:(UIColor*)color  hlcolor:(UIColor *)color2 shadowcolor:(UIColor *)color3 tag:(int)tag target:(id)target seletor:(SEL)seletor

{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        UIButton* b = [[UIButton alloc]initWithFrame:frame];
        if (color3!=nil) {
            
            [b.titleLabel setShadowOffset:CGSizeMake(0, 1)];
            [b setTitleShadowColor:color3 forState:UIControlStateNormal];
        }
        if (color2!=nil)
        {
            [b setTitleColor:color2 forState:UIControlStateHighlighted];
        }
        [b.titleLabel setFont:[UIFont boldSystemFontOfSize:size]];
        [b setTitleColor:color forState:UIControlStateNormal];
        [b setTitle:strContent forState:UIControlStateNormal];
        [b setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@",imageBG]] forState:UIControlStateNormal];
        [b setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@HL",imageBG]] forState:UIControlStateHighlighted];
        
        b.tag=tag;
        
        [b addTarget:target action:seletor forControlEvents:UIControlEventTouchUpInside];
        
        self=(LUIButton *)b;
    }
    return self;
}

-(id)initButtonImageOnly:(NSString *)image frame:(CGRect)frame imageHL:(NSString *)imageHL tag:(int)tag target:(id)target seletor:(SEL)seletor
{
    self = [super initWithFrame:frame];
    if (self) {
        
        UIButton* b = [[UIButton alloc]initWithFrame:frame];
        if (image!=nil) {
            
            [b setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@",image]] forState:UIControlStateNormal];
        }
        
        if (imageHL!=nil) {
            
            [b setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@",imageHL]] forState:UIControlStateHighlighted];
            
        }
        
        b.tag=tag;
        
        [b addTarget:target action:seletor forControlEvents:UIControlEventTouchUpInside];
        self=(LUIButton *)b;
    }
    return self;
}
-(id)initWithFrame:(CGRect)frame tag:(int)tag target:(id)target seletor:(SEL)seletor
{
    self = [super initWithFrame:frame];
    if (self) {
        
        UIButton* b = [[UIButton alloc]initWithFrame:frame];
        
        b.tag=tag;
        b.backgroundColor=[UIColor clearColor];
        //b.alpha=0.1;
        
        [b addTarget:target action:seletor forControlEvents:UIControlEventTouchUpInside];
        self=(LUIButton *)b;
    }
    return self;
}

-(id)initButtonIconBGColor:(NSString *)icon frame:(CGRect)frame bgColor:(UIColor *)bgColor bgColorHL:(UIColor *)bgColorHL iconHeight:(CGFloat)iconHeight cornerRadius:(CGFloat)cornerRadius tag:(int)tag target:(id)target seletor:(SEL)seletor
{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        
        UIButton* b = [[UIButton alloc]initWithFrame:frame];
        [b setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@",icon]] forState:UIControlStateNormal];
        [b setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_hl",icon]] forState:UIControlStateHighlighted];
        //[b setImageEdgeInsets:UIEdgeInsetsMake(-(frame.size.height-iconHeight)/2, 0.0, 0.0,0.0)];
        //[b setImageEdgeInsets:UIEdgeInsetsMake(0.0, 0.0, 0.0,0.0)];
        
        if (bgColor!=nil) {
            [b setBackgroundImage:[UIImage imageWithColor:bgColor] forState:UIControlStateNormal];
        }
        if (bgColorHL!=nil) {
            [b setBackgroundImage:[UIImage imageWithColor:bgColorHL] forState:UIControlStateHighlighted];
        }
        
        if (cornerRadius>0)
        {
            [b.layer setCornerRadius:cornerRadius];
            [b.layer setMasksToBounds:YES];
        }
        
        b.tag=tag;
        
        [b addTarget:target action:seletor forControlEvents:UIControlEventTouchUpInside];
        
        self=(LUIButton *)b;
    }
    return self;
}

@end
