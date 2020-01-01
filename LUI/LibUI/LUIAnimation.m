//
//  LUIAnimation.m
//  appChineseWordCross2
//
//  Created by Cheney Lin on 12-6-24.
//  Copyright (c) 2012年 Home. All rights reserved.
//

#import "LUIAnimation.h"

#import <QuartzCore/QuartzCore.h>

@implementation LUIAnimation

-(void)initWithView:(UIView*)viewAnimation withType:(NSString *)aType withSubType:(NSString *)aSubType
{
    
    
    CATransition *transition = [CATransition animation];
    transition.duration = 0.5;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = aType;//{kCATransitionMoveIn, kCATransitionPush, kCATransitionReveal, kCATransitionFade};
    
    //更多私有{@"cube",@"suckEffect",@"oglFlip",@"rippleEffect",@"pageCurl",@"pageUnCurl",@"cameraIrisHollowOpen",@"cameraIrisHollowClose"};
    transition.subtype = aSubType;//{kCATransitionFromLeft, kCATransitionFromRight, kCATransitionFromTop, kCATransitionFromBottom};
    
    //transition.delegate = self;
    [viewAnimation.layer addAnimation:transition forKey:nil];
    
    // 要做的
    [viewAnimation exchangeSubviewAtIndex:1 withSubviewAtIndex:0];
    
    //return self;
    
}

-(void)initWithView:(UIView*)viewAnimation from:(UIView*)fromView to:(UIView *)toView withType:(NSString *)aType withSubType:(NSString *)aSubType

{
    
    
    NSUInteger n1 = [[viewAnimation subviews] indexOfObject:fromView];
    NSUInteger n2 = [[viewAnimation subviews] indexOfObject:toView];
    
    CATransition *transition = [CATransition animation];
    transition.duration = 0.5;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = aType;//{kCATransitionMoveIn, kCATransitionPush, kCATransitionReveal, kCATransitionFade};
    
    //更多私有{@"cube",@"suckEffect",@"oglFlip",@"rippleEffect",@"pageCurl",@"pageUnCurl",@"cameraIrisHollowOpen",@"cameraIrisHollowClose"};
    transition.subtype = aSubType;//{kCATransitionFromLeft, kCATransitionFromRight, kCATransitionFromTop, kCATransitionFromBottom};
    
    //transition.delegate = self;
    [viewAnimation.layer addAnimation:transition forKey:nil];
    
    // 要做的
    [viewAnimation exchangeSubviewAtIndex:n1 withSubviewAtIndex:n2];
    fromView.alpha=0;
    toView.alpha=1;
    //return self;
    
}
+(void)animationView:(UIView*)viewAnimation withType:(NSString *)aType withSubType:(NSString *)aSubType withDuration:(NSTimeInterval)timeDuration
{
    [self animationView:viewAnimation from:viewAnimation to:viewAnimation withType:aType withSubType:aSubType withDuration:timeDuration];
}
+(void)animationView:(UIView*)viewAnimation withType:(NSString *)aType withSubType:(NSString *)aSubType
{
    [self animationView:viewAnimation from:viewAnimation to:viewAnimation withType:aType withSubType:aSubType withDuration:0.5];
}
+(void)animationView:(UIView*)viewAnimation from:(UIView*)fromView to:(UIView *)toView withType:(NSString *)aType withSubType:(NSString *)aSubType

{
    
    [self animationView:viewAnimation from:fromView to:toView withType:aType withSubType:aSubType withDuration:0.5];
        
}
+(void)animationView:(UIView*)viewAnimation from:(UIView*)fromView to:(UIView *)toView withType:(NSString *)aType withSubType:(NSString *)aSubType withDuration:(NSTimeInterval)timeDuration

{
    
    
    NSUInteger n1 = [[viewAnimation subviews] indexOfObject:fromView];
    NSUInteger n2 = [[viewAnimation subviews] indexOfObject:toView];
    
    CATransition *transition = [CATransition animation];
    transition.duration = timeDuration;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = aType;//{kCATransitionMoveIn, kCATransitionPush, kCATransitionReveal, kCATransitionFade};
    
    //更多私有{@"cube",@"suckEffect",@"oglFlip",@"rippleEffect",@"pageCurl",@"pageUnCurl",@"cameraIrisHollowOpen",@"cameraIrisHollowClose"};
    transition.subtype = aSubType;//{kCATransitionFromLeft, kCATransitionFromRight, kCATransitionFromTop, kCATransitionFromBottom};
    
    //transition.delegate = self;
    [viewAnimation.layer addAnimation:transition forKey:nil];
    
    // 要做的
    [viewAnimation exchangeSubviewAtIndex:n1 withSubviewAtIndex:n2];
    fromView.alpha=0;
    toView.alpha=1;
    
}
@end
