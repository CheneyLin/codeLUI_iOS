//
//  LUICheckbox.h
//  SuperGenPass
//
//  Created by Cheney Lin on 2018/12/28.
//  Copyright © 2018 70Apps Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LUICheckbox : UIView

-(id)initWithFrame:(CGRect)frame iconUncheck:(NSString *)iconUncheck iconChecked:(NSString *)iconChecked text:(NSString *)text tag:(int)tag;
@end

NS_ASSUME_NONNULL_END
