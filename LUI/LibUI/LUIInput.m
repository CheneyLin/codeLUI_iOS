//
//  LUIInput.m
//  xxmessage
//
//  Created by Cheney Lin on 15/6/11.
//  Copyright (c) 2015年 70Apps Studio. All rights reserved.
//

#import "LUIInput.h"

@implementation LUIInput

@synthesize delegate=_delegate;
@synthesize inputText=_inputText;


-(UITextField *)inputText
{
    if(!_inputText)
        
    {
        CGRect frameInput = self.frame;
        frameInput.origin.x=0;
        frameInput.origin.y=0;
        UITextField *newInputText =[[UITextField alloc] initWithFrame:frameInput];
        newInputText.opaque = NO;
        newInputText.delegate=self;
        _inputText=newInputText;
        
    }
    return _inputText;
}


-(id)initFrame:(CGRect)frame type:(kLUIInputType)type keyboard:(UIKeyboardType)keyboard color:(UIColor*)color placeholder:(NSString *)placeholder delegate:(id)delegate tag:(int)tag
{
    
    self = [super initWithFrame:frame];
    if (self) {
        CGRect frameInput = frame;
        frameInput.origin.x=0;
        frameInput.origin.y=0;
        if(type==kLUIInputTypeText||type==kLUIInputTypePassword)
        {
            [self addSubview:self.inputText];
            //self.inputText = [[UITextField alloc] initWithFrame:frameInput];
            self.inputText.keyboardType=keyboard;
            self.inputText.backgroundColor = [UIColor clearColor];
            self.inputText.textColor = color;
            self.inputText.font = [UIFont systemFontOfSize:(int)frameInput.size.height/2];
            self.inputText.placeholder=placeholder;
            self.inputText.clearButtonMode = UITextFieldViewModeWhileEditing;
            self.inputText.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
            self.inputText.delegate=self;
            if(type==kLUIInputTypePassword)
                self.inputText.secureTextEntry=YES;
        }
        self.tag=tag;
        self.delegate=delegate;
    }
    return self;
    
}
-(void)inputFocus
{
    [self.inputText becomeFirstResponder];
}
-(void)inputBlur
{
    [self.inputText resignFirstResponder];
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    
    //[inputText performSelector:@selector(selectAll:) withObject:inputText afterDelay:0.f];
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField{
    [self.delegate didLUIInputFocus:self.tag];
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    
    [self.delegate didLUIInputBlur:self.tag];
    
    return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField{
    //self.text=textField.text;
}
-(void)initText:(NSString *)text
{
    self.inputText.text=text;
}
- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    
    [self.delegate didLUIInputReturn:self.tag];
    
    return YES;
}

@end
