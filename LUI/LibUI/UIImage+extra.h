//
//  UIImage+extra.h
//  destination
//
//  Created by Lin Cheney on 12-12-15.
//  Copyright (c) 2012年 100nanren.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (extra)

-(UIImage *)croppedWithRect:(CGRect)bounds;

+(UIImage*) imageWithColor:(UIColor*)color;

- (UIImage *)imageByScalingToBox:(CGSize)boxSize;
- (UIImage *)imageByScalingToSize:(CGSize)targetSize;
@end
