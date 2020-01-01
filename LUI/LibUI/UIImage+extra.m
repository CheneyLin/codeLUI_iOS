//
//  UIImage+extra.m
//  destination
//
//  Created by Lin Cheney on 12-12-15.
//  Copyright (c) 2012年 100nanren.com. All rights reserved.
//

#import "UIImage+extra.h"

@implementation UIImage (extra)
-(UIImage *)croppedWithRect:(CGRect)bounds
{
    
    float scale=self.scale;
    
    CGImageRef imageRef=CGImageCreateWithImageInRect(self.CGImage, bounds);
    UIGraphicsBeginImageContext(bounds.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextDrawImage(context, bounds, imageRef);
    UIImage *croppedImage=[UIImage imageWithCGImage:imageRef scale:scale orientation:UIImageOrientationUp];
    UIGraphicsEndImageContext();
    //CGImageRelease(imageRef);
    //CGSize asd=croppedImage.size;
    return croppedImage;
}
-(UIImage *)croppedWithRect2:(CGRect)bounds
{
    CGImageRef imageRef=CGImageCreateWithImageInRect(self.CGImage, bounds);
    UIImage *croppedImage=[UIImage imageWithCGImage:imageRef];
    CGImageRelease(imageRef);
    //CGSize asd=croppedImage.size;
    return croppedImage;
}
+(UIImage*) imageWithColor:(UIColor*)color
{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

- (UIImage *)imageByScalingToBox:(CGSize)boxSize
{
    CGSize newSize = boxSize;
    CGFloat h=self.size.height;
    CGFloat w=self.size.width;
    NSLog(@"input %lf,%lf",w,h);

    if (h>boxSize.height&&w>boxSize.width)
    {
        if (w/boxSize.width>h/boxSize.height)
        {
            h=h*(boxSize.width/w);
            w=boxSize.width;
        }
        else
        {
            
            w=w*(boxSize.height/h);
            h=boxSize.height;
        }
        newSize = CGSizeMake(w,h);
        NSLog(@"output %lf,%lf",w,h);
        return [self imageByScalingToSize:newSize];
    }
    else
    {
        return self;
    }

}
- (UIImage *)imageByScalingToSize:(CGSize)targetSize
{
    UIImage *sourceImage = self;
    UIImage *newImage = nil;
    CGSize imageSize = sourceImage.size;
    CGFloat width = imageSize.width;
    CGFloat height = imageSize.height;
    CGFloat targetWidth = targetSize.width;
    CGFloat targetHeight = targetSize.height;
    CGFloat scaleFactor = 0.0;
    CGFloat scaledWidth = targetWidth;
    CGFloat scaledHeight = targetHeight;
    CGPoint thumbnailPoint = CGPointMake(0.0,0.0);
    if (CGSizeEqualToSize(imageSize, targetSize) == NO) {
        CGFloat widthFactor = targetWidth / width;
        CGFloat heightFactor = targetHeight / height;
        if (widthFactor < heightFactor)
            scaleFactor = widthFactor;
        else
            scaleFactor = heightFactor;
        scaledWidth  = width * scaleFactor;
        scaledHeight = height * scaleFactor;
        // center the image
        if (widthFactor < heightFactor) {
            
            thumbnailPoint.y = (targetHeight - scaledHeight) * 0.5;
        } else if (widthFactor > heightFactor) {
            thumbnailPoint.x = (targetWidth - scaledWidth) * 0.5;
        }
    }
    // this is actually the interesting part:
    UIGraphicsBeginImageContext(targetSize);
    CGRect thumbnailRect = CGRectZero;
    thumbnailRect.origin = thumbnailPoint;
    thumbnailRect.size.width  = scaledWidth;
    thumbnailRect.size.height = scaledHeight;
    [sourceImage drawInRect:thumbnailRect];
    newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    if(newImage == nil)
        NSLog(@"could not scale image");
    return newImage ;
}

@end
