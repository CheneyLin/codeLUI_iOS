//
//  LUIAnimation.h
//  appChineseWordCross2
//
//  Created by Cheney Lin on 12-6-24.
//  Copyright (c) 2012年 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#define LUIAnimationFlip @"oglFlip"
#define LUIAnimationRipple @"rippleEffect"
#define LUIAnimationCube @"cube"
#define LUIAnimationPageCurl @"pageCurl"
#define LUIAnimationPageUnCurl @"pageUnCurl"
#define LUIAnimationSuck @"suckEffect"
#define LUIAnimationPush kCATransitionPush
#define LUIAnimationFade kCATransitionFade
#define LUIAnimationMoveIn kCATransitionMoveIn
#define LUIAnimationReveal kCATransitionReveal
#define LUIAnimationFromTop kCATransitionFromTop
#define LUIAnimationFromBottom kCATransitionFromBottom
#define LUIAnimationFromLeft kCATransitionFromLeft
#define LUIAnimationFromRight kCATransitionFromRight

@interface LUIAnimation : NSObject

-(void)initWithView:(UIView*)viewAnimation withType:(NSString *)aType withSubType:(NSString *)aSubType;
-(void)initWithView:(UIView*)viewAnimation from:(UIView*)fromView to:(UIView *)toView withType:(NSString *)aType withSubType:(NSString *)aSubType;
+(void)animationView:(UIView*)viewAnimation from:(UIView*)fromView to:(UIView *)toView withType:(NSString *)aType withSubType:(NSString *)aSubType;

+(void)animationView:(UIView*)viewAnimation from:(UIView*)fromView to:(UIView *)toView withType:(NSString *)aType withSubType:(NSString *)aSubType withDuration:(NSTimeInterval)timeDuration;

+(void)animationView:(UIView*)viewAnimation  withType:(NSString *)aType withSubType:(NSString *)aSubType;

+(void)animationView:(UIView*)viewAnimation  withType:(NSString *)aType withSubType:(NSString *)aSubType withDuration:(NSTimeInterval)timeDuration;

@end
