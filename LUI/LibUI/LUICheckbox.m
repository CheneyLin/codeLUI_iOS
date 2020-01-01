//
//  LUICheckbox.m
//  SuperGenPass
//
//  Created by Cheney Lin on 2018/12/28.
//  Copyright © 2018 70Apps Studio. All rights reserved.
//

#import "LUICheckbox.h"

@implementation LUICheckbox

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(id)initWithFrame:(CGRect)frame iconUncheck:(NSString *)iconUncheck iconChecked:(NSString *)iconChecked text:(NSString *)text tag:(int)tag
{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        
        UIView* b = [[UIView alloc]initWithFrame:frame];
        
        b.tag=tag;
        
        //[b addTarget:self action:seletor forControlEvents:UIControlEventTouchUpInside];
        
        self=(LUICheckbox *)b;
    }
    return self;
    
    
}
@end
