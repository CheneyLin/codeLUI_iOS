
#import "UIColor+RGB.h"

typedef enum
{
    kFrameButtonPlay = 0,
    kFrameButtonContinue,
    kFrameButtonHelp,
    kFrameButtonShop,
    kFrameButtonBack,
    kFrameButtonGameCenter,
    kFrameButtonCoin,
    kFrameButtonPlay1,
    kFrameButtonPlay2,
    kFrameButtonPlay3,
    kFrameButtonPlay4,
    kFrameButton70Apps,
    kFrameExtraButtonHelp,
    kFrameExtraButtonCoin,
    kFrameExtraButtonShop,
    kFrameExtraButtonGameCenter,
    kFrameExtraButton70Apps,
    kFrameWallButtonDomob,
    kFrameWallButtonYoumi,
    kFrameWallButtonWaps,
    kFrameWallButtonYJF,
    kFrameWallButtonLiMei,
    kFrameWallButtonCheckCoin
    
} kFrameButton;



@interface LUIResource : NSObject
+(CGFloat)LUIWidth;
+(CGFloat)LUIHeight;

+(NSString *)dataPlistName;
+(NSString *)name:(NSString *)tagName;

+(CGSize)size:(NSString *)tagName;
+(CGSize)size:(NSString *)tagName extraID:(int)id;

+(CGRect)bound:(NSString *)tagName;
+(CGRect)bound:(NSString *)tagName viewSize:(CGSize)viewSize;
+(CGRect)bound:(NSString *)tagName extraID:(int)id;
+(CGRect)bound:(NSString *)tagName viewSize:(CGSize)viewSize extraID:(int)id;

+(CGPoint)center:(kFrameButton)button viewSize:(CGSize)viewSize;
+(UIView *)bg:(NSString *)tagName;


+(UIColor *)colorBG:(NSString*)tagName;
+(UIColor *)color:(NSString*)tagName;
+(UIColor *)colorHL:(NSString*)tagName;
+(UIColor *)colorSH:(NSString*)tagName;

+(CGFloat)iPhone5Height;

+(UIView *)box:(NSString*)tagName cornerRadius:(CGFloat)radiusValue;
+(UIView *)box:(CGRect)frame bgColor:(UIColor *)bgColor cornerRadius:(CGFloat)radiusValue;
@end
