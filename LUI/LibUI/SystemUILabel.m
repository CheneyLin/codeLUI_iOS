//
//  SystemUILabel.m
//  appZSXD
//
//  Created by Cheney Lin on 14-7-16.
//  Copyright (c) 2014年 70Apps Studio. All rights reserved.
//

#import "SystemUILabel.h"

@implementation SystemUILabel

-(id)initLabel:(NSString *)strContent frame:(CGRect)frame size:(int)size color:(UIColor*)color tag:(int)tag
{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        UILabel* labTitle = [[UILabel alloc] initWithFrame:frame];
        labTitle.backgroundColor = [UIColor clearColor];
        labTitle.opaque = NO;
        labTitle.textColor = color;
        labTitle.font = [UIFont boldSystemFontOfSize:size];
        labTitle.text=strContent;
        labTitle.tag=tag;
        self=(SystemUILabel *)labTitle;
    }
    return self;
}

-(id)initLabel:(NSString *)strContent frame:(CGRect)frame size:(int)size color:(UIColor*)color  hlcolor:(UIColor *)color2 shadowcolor:(UIColor *)color3 lines:(int)lines tag:(int)tag
{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        UILabel* labTitle = [[UILabel alloc] initWithFrame:frame];
        if (lines>1)
        {
            labTitle.numberOfLines=0;
        }
        labTitle.backgroundColor = [UIColor clearColor];
        labTitle.opaque = NO;
        labTitle.textColor = color;
        labTitle.highlightedTextColor = color2;
        if (color3!=nil)
        {
            labTitle.shadowColor=color3;
            labTitle.shadowOffset=CGSizeMake(0, 1);
            
        }
        labTitle.font = [UIFont boldSystemFontOfSize:size];
        labTitle.text=strContent;
        labTitle.tag=tag;
        self=(SystemUILabel *)labTitle;
    }
    return self;
}

-(id)initLabel:(NSString *)strContent bold:(BOOL)isBold font:(NSString *)fontFamily mutilLine:(BOOL)isMutilLine frame:(CGRect)frame size:(int)size color:(UIColor*)color  hlcolor:(UIColor *)color2 shadowcolor:(UIColor *)color3 tag:(int)tag
{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        UILabel* labTitle = [[UILabel alloc] initWithFrame:frame];
        if (isMutilLine)
        {
            labTitle.numberOfLines=0;
        }
        labTitle.backgroundColor = [UIColor clearColor];
        labTitle.opaque = NO;
        labTitle.textColor = color;
        labTitle.highlightedTextColor = color2;
        if (color3!=nil)
        {
            labTitle.shadowColor=color3;
            labTitle.shadowOffset=CGSizeMake(0, 1);
            
        }
        if (isBold)
        {
            [labTitle setFont:[UIFont fontWithName:[NSString stringWithFormat:@"%@-Bold",fontFamily] size:size]];
        }
        else
        {
            
            [labTitle setFont:[UIFont fontWithName:fontFamily size:size]];
        }
        
        labTitle.text=strContent;
        labTitle.tag=tag;
        self=(SystemUILabel *)labTitle;
    }
    return self;
}

@end
