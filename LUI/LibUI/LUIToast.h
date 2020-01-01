//
//  LUIToast.h
//  SuperGenPass
//
//  Created by Cheney Lin on 2018/10/30.
//  Copyright © 2018 70Apps Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


@interface LUIToast : UIView

@property (nonatomic, strong) UILabel *labelText;

-(id)initWithFrame:(CGRect)frame text:(NSString *)text tag:(int)tag;
-(id)initWithFrame:(CGRect)frame text:(NSString *)text bg:(NSString *)bg leftMargin:(float)leftMargin tag:(int)tag;
-(void)showToast:(NSString *)text;
-(void)hideToast;
@end

NS_ASSUME_NONNULL_END
