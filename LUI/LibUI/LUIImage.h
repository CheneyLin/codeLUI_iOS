//
//  LUIImage.h
//  appZSXD
//
//  Created by Cheney Lin on 14-7-15.
//  Copyright (c) 2014年 70Apps Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LUIImage : UIImageView
-(id)initURL:(NSString*)strUrl placeholderImage:(NSString*)strImage frame:(CGRect)frame;
-(id)initURL:(NSString*)strUrl placeholderImage:(NSString*)strImage frame:(CGRect)frame cornerRadius:(int)cornerRadius tag:(int)tag;
-(id)initImage:(NSString*)strImage frame:(CGRect)frame;
-(id)initImage:(NSString*)strImage frame:(CGRect)frame cornerRadius:(int)cornerRadius tag:(int)tag;
-(void)loadURL:(NSString*)strUrl placeholderImage:(NSString*)strImage;
@end
