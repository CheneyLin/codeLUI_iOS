//
//  LUIToast.m
//  SuperGenPass
//
//  Created by Cheney Lin on 2018/10/30.
//  Copyright © 2018 70Apps Studio. All rights reserved.
//
#import "UIColor+RGB.h"
#import "LUIResource.h"
#import "LUIToast.h"

@implementation LUIToast

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(id)initWithFrame:(CGRect)frame text:(NSString *)text tag:(int)tag
{
    return [self initWithFrame:frame text:text bg:@"" leftMargin:0 tag:tag];
}
    
    -(id)initWithFrame:(CGRect)frame text:(NSString *)text bg:(NSString *)bg leftMargin:(float)leftMargin tag:(int)tag
    {
        
    self = [super initWithFrame:frame];
    CGRect frameChild = frame;
    frameChild.origin.x=0;
    frameChild.origin.y=0;
    
    if (self) {
        
        self.labelText = [[UILabel alloc] initWithFrame:frameChild];
        
        self.labelText.font = [UIFont systemFontOfSize:(int)frameChild.size.height/2];
        self.labelText.text = text;
        if(![bg isEqualToString:@""]){
            
            UIImageView *imageBg=[[UIImageView alloc]initWithFrame:frameChild];
            [imageBg setImage:[UIImage imageNamed:bg]];
            [self addSubview:imageBg];
            self.labelText.textColor = [UIColor UIColorFromARGB:0xFF333333];
        }else{
            
            UIView * bgToast = [LUIResource box:frameChild bgColor:[UIColor UIColorFromARGB:0x55000000] cornerRadius:0];
            [self addSubview:bgToast];
            self.labelText.textColor = [UIColor whiteColor];
        }
        if(leftMargin==0){
            self.labelText.textAlignment=NSTextAlignmentCenter;
        }else{
            
            CGRect frameText = frameChild;
            frameText.origin.x=leftMargin*frameText.size.width;
            self.labelText.frame=frameText;
        }
        [self addSubview:self.labelText];
    }
    self.alpha=0;
        self.tag=tag;
    return self;
}
-(void)showToast:(NSString *)text
{
    self.labelText.text = text;
    [UIView animateWithDuration:0.5 animations:^{
        self.alpha = 1;
    } completion:nil];
    [self performSelector:@selector(hideToast) withObject:nil afterDelay:2];
    
}
-(void)hideToast
{
//    self.alpha=0;
    [UIView animateWithDuration:0.2 animations:^{
        self.alpha = 0;
    } completion:nil];
    /*
    [UIView animateWithDuration:0.5 animations:^{
        self.alpha = 0.3;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.5 animations:^{
            self.alpha = 0;
        }];
    }];
    */
}
@end
