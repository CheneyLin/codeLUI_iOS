//
//  SystemSound.m
//  gxalbum
//
//  Created by Cheney Lin on 12-5-17.
//  Copyright (c) 2012年 Home. All rights reserved.
//

#import "LUISound.h"

#import "AudioToolbox/AudioServices.h"

@implementation LUISound
+(void)playSound:(NSString*)fileSound
{
    
    if ([[[NSUserDefaults standardUserDefaults] objectForKey:@"appSoundStatus"] isEqualToString:@"NO"])
    {
        return;
    }
    
    if (![[NSUserDefaults standardUserDefaults] boolForKey:@"CONFIG_TAG_SOUND"])
    {
        return;
    }
    NSString *alertPath=[[NSBundle mainBundle] pathForResource:fileSound ofType:@"wav"];
    NSURL *alertUrl=[NSURL fileURLWithPath:alertPath];
    SystemSoundID _alertSound;
    
    AudioServicesCreateSystemSoundID((__bridge CFURLRef )alertUrl,&_alertSound);
    AudioServicesPlaySystemSound(_alertSound);
    
}

-(void)playSoundObject:(NSString*)fileSound
{
    
    if ([[[NSUserDefaults standardUserDefaults] objectForKey:@"appSoundStatus"] isEqualToString:@"NO"])
    {
        return;
    }
    NSString *alertPath=[[NSBundle mainBundle] pathForResource:fileSound ofType:@"wav"];
    NSURL *alertUrl=[NSURL fileURLWithPath:alertPath];
    SystemSoundID _alertSound;
    
    AudioServicesCreateSystemSoundID((__bridge CFURLRef )alertUrl,&_alertSound);
    AudioServicesPlaySystemSound(_alertSound);
    
}
-(id)initWithSound:(NSString*)fileSound
{
    [self playSoundObject:fileSound];
    
    return self;
    
}
@end
