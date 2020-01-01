//
//  SystemSound.h
//  gxalbum
//
//  Created by Cheney Lin on 12-5-17.
//  Copyright (c) 2012年 Home. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LUISound : NSObject
-(id)initWithSound:(NSString*)fileSound;
-(void)playSoundObject:(NSString*)fileSound;

+(void)playSound:(NSString*)fileSound;

@end
