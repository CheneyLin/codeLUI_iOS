//
//  LUIImage.m
//  appZSXD
//
//  Created by Cheney Lin on 14-7-15.
//  Copyright (c) 2014年 70Apps Studio. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "UIImageView+WebCache.h"
#import "LUIImage.h"

@implementation LUIImage
-(id)initURL:(NSString*)strUrl placeholderImage:(NSString*)strImage frame:(CGRect)frame
{
    return [self initURL:strUrl placeholderImage:strImage frame:frame cornerRadius:0 tag:0];
}
-(id)initURL:(NSString*)strUrl placeholderImage:(NSString*)strImage frame:(CGRect)frame cornerRadius:(int)cornerRadius tag:(int)tag
{
    self = [super initWithFrame:frame];
    if (self) {
        if (strUrl.length>2) {
            UIImageView *imageView=[[UIImageView alloc] initWithFrame:frame];
            //[cell.imageView sd_setImageWithURL:[NSURL URLWithString:themeIconUrl] placeholderImage:[UIImage imageNamed:placeholderIconUrl]];
            
            [imageView sd_setImageWithURL:[NSURL URLWithString:strUrl]
                      placeholderImage:[UIImage imageNamed:strImage]];
            [imageView.layer setCornerRadius:cornerRadius];
            [imageView.layer setMasksToBounds:YES];
            self=(LUIImage *)imageView;
            self.tag=tag;
        }
        else
        {
            return [self initImage:strImage frame:frame cornerRadius:cornerRadius tag:tag];
        }
    }
    return self;
}

-(id)initImage:(NSString*)strImage frame:(CGRect)frame
{
    return [self initImage:strImage frame:frame cornerRadius:0 tag:0];
}
-(id)initImage:(NSString*)strImage frame:(CGRect)frame cornerRadius:(int)cornerRadius tag:(int)tag
{
    self = [super initWithFrame:frame];
    if (self) {
        UIImageView *imageView=[[UIImageView alloc]initWithFrame:frame];
        [imageView setImage:[UIImage imageNamed:strImage]];
        
        self=(LUIImage *)imageView;
        self.tag=tag;
    }
    return self;
}

-(void)loadURL:(NSString*)strUrl placeholderImage:(NSString*)strImage
{
    [(UIImageView *)self sd_setImageWithURL:[NSURL URLWithString:strUrl] placeholderImage:[UIImage imageNamed:strImage]];
}
@end
