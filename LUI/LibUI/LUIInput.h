//
//  LUIInput.h
//  xxmessage
//
//  Created by Cheney Lin on 15/6/11.
//  Copyright (c) 2015年 70Apps Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum
{
    kLUIInputTypeText = 0,
    kLUIInputTypePassword,
    kLUIInputTypeTextarea,
    kLUIInputTypeCheckbox,
    kLUIInputTypeRadio
    
    
} kLUIInputType;


@class LUIInput;

@protocol LUIInputDelegate
@optional
- (void)didLUIInputFocus:(NSInteger)tag;
- (void)didLUIInputBlur:(NSInteger)tag;
- (void)didLUIInputReturn:(NSInteger)tag;
@end

@interface LUIInput : UIView<UITextFieldDelegate>

@property (assign, nonatomic) id <LUIInputDelegate> delegate;
@property (nonatomic, strong) UITextField *inputText;


-(id)initFrame:(CGRect)frame type:(kLUIInputType)type keyboard:(UIKeyboardType)keyboard color:(UIColor*)color placeholder:(NSString *)placeholder delegate:(id)delegate tag:(int)tag;
-(void)inputFocus;
-(void)inputBlur;
-(void)initText:(NSString *)text;
@end
