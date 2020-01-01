
#import "LUISystem.h"
#import "LUIResource.h"
#import "UIColor+RGB.h"

@implementation LUIResource


+(NSString *)name:(NSString *)tagName
{
//    if ([tagName isEqualToString:RESOURCE_ID_PLAY_LEVEL]||[tagName isEqualToString:RESOURCE_ID_PLAY_LEVEL_1]||[tagName isEqualToString:RESOURCE_ID_PLAY_LEVEL_2]||[tagName isEqualToString:RESOURCE_ID_PLAY_LEVEL_3]||[tagName isEqualToString:RESOURCE_ID_PLAY_LEVEL_4]||[tagName isEqualToString:RESOURCE_ID_PLAY_LEVEL_5])
//    {
//        NSString *localTag=[NSString stringWithFormat:tagName,[FrameConfig getAppConfigNumber:CONFIG_GAME_VERSIION]];
//        return NSLocalizedString(localTag,localTag);
//    }
    
//    if ([UISystem device]>=iPad) {
//        return [NSString stringWithFormat:tagName,[AppConfig getAppConfigNumber:CONFIG_GAME_VERSIION],RESOURCE_IPAD_TAG];
//    }else{
//        return [NSString stringWithFormat:tagName,[FrameConfig getAppConfigNumber:CONFIG_GAME_VERSIION],RESOURCE_IPOD_TAG];
//    }
    return tagName;
}
+(CGRect)bound:(NSString *)tagName
{
    return [self bound:tagName viewSize:CGSizeMake(0, 0) extraID:1];
}
+(CGRect)bound:(NSString *)tagName viewSize:(CGSize)viewSize
{
    return [self bound:tagName viewSize:viewSize extraID:1];
}

+(CGRect)bound:(NSString *)tagName extraID:(int)id
{
    return [self bound:tagName viewSize:CGSizeMake(0, 0) extraID:id];
}

+(CGRect)bound:(NSString *)tagName viewSize:(CGSize)viewSize extraID:(int)id
{
    int x,y,w,h;
    
    x=10;
    y=10;
    w=100;
    h=100;
    if ([LUISystem device]>=iPad)
    {    }
    else
    {
        
        /*
         if ([tagName isEqualToString:RESOURCE_ID_SELECT_SCROLL])
         {
         x=0;
         y=SIZE_PAGE_MARGIN_TOP/2;
         w=320*id;
         h=480-SIZE_PAGE_MARGIN_TOP/2+heightOffset;
         }
        if ([tagName isEqualToString:RESOURCE_ID_SELECT_PAGE])
        {
            x=0;
            y=430+heightOffset;
            w=320;
            h=18;
        }
        
        if([tagName isEqualToString:RESOURCE_IC_NEWOPEN])
        {
            x=12;
            y=11;
            w=50;
            h=50;
        }
        
        if([tagName isEqualToString:RESOURCE_BG_STATUS_BOARD])
        {
            w=280;
            y=54+heightOffset/5;
            h=50;
            x=(320-w)/2;
            
        }
        
        if([tagName isEqualToString:RESOURCE_IC_LEVEL])
        {
            w=24;
            h=24;
            x=8;
            y=13;
        }
        if([tagName isEqualToString:RESOURCE_IC_LEVELNAME])
        {
            w=88;
            h=18;
            x=35;
            y=16;
        }
        
        if([tagName isEqualToString:RESOURCE_IC_SCORE])
        {
            w=24;
            h=24;
            x=135;
            y=13;
        }
        if([tagName isEqualToString:RESOURCE_IC_COIN])
        {
            w=24;
            h=24;
            x=210;
            y=13;
        }
        if([tagName isEqualToString:RESOURCE_ID_SCORE_BOARD_TEXT])
        {
            w=60;
            h=20;
            x=160;
            y=15;
        }
        
        if([tagName isEqualToString:RESOURCE_ID_COIN_BOARD_TEXT])
        {
            w=60;
            h=20;
            x=235;
            y=15;
        }

        
        if([tagName isEqualToString:RESOURCE_ID_PLAYAREA])
        {
            w=320;
            y=100+heightOffset/5;
            h=480+heightOffset-y;
            x=(320-w)/2;
            
        }
        
        if([tagName isEqualToString:RESOURCE_ID_BG_QUESTION])
        {
            w=230;
            h=240;
            x=(320-w)/2;
            y=0+heightOffset/5*2;
            
        }
        if([tagName isEqualToString:RESOURCE_ID_BG_QUESTION2])
        {
            w=230;
            h=70;
            x=(320-w)/2;
            y=240+heightOffset/5*2;
            if (heightOffset==0)
            {
                h=38;
            }
            

            
        }
        if([tagName isEqualToString:RESOURCE_ID_QUESTION])
        {
            w=200;
            h=200;
            x=60;
            y=17+heightOffset/5*2;
            
            if ([FrameConfig getAppConfigNumber:CONFIG_GAME_VERSIION]==3||[FrameConfig getAppConfigNumber:CONFIG_GAME_VERSIION]==4)
            {
                y=0+heightOffset/5*2;
            }
            
        }
        
        if([tagName isEqualToString:RESOURCE_ID_BG_ANSWER])
        {
            
            w=32;
            h=32;
            
            x=0+id*34;
            y=0;
            
        }
        
        
        
        if([tagName isEqualToString:RESOURCE_ID_BG_LETTER])
        {
            p=id/6;
            n=id%6;
            
            w=42;
            h=45;
            
            x=4+n*44;
            y=280+heightOffset/5*4+p*(46+heightOffset/8);
            
        }
        
        
        
        if([tagName isEqualToString:RESOURCE_ID_TOOL1])
        {
            
            w=42;
            h=45;
            x=274;
            y=280+heightOffset/5*4;
            
        }
        
        if([tagName isEqualToString:RESOURCE_ID_TOOL2])
        {
            
            w=42;
            h=45;
            x=274;
            y=280+heightOffset/5*4+(46+heightOffset/8);
            
        }
                
        if([tagName isEqualToString:RESOURCE_ID_BG_INTRO])
        {
            w=270;
            h=64;
            x=(320-w)/2;
            y=490;
        }
        
        
        if([tagName isEqualToString:RESOURCE_ID_LEVELSELECT])
        {
            w=320;
            h=480+heightOffset;
            x=0;
            y=0;
            
        }
        
        
        if([tagName isEqualToString:RESOURCE_ID_INTRO])
        {
            w=250;
            h=60;
            x=(270-w)/2;
            y=(64-h)/2;
            
        }
        
        
        
        
        if([tagName isEqualToString:RESOURCE_BG_LEVEL])
        {
            w=300;
            h=160;
            x=(320-w)/2;
            y=((480+heightOffset)-h)/2;
            
        }
        
        
        
        if([tagName isEqualToString:RESOURCE_ID_LEVEL])
        {
            w=48;
            h=64;
            x=22+id*45;
            y=((480+heightOffset)-h)/2;
            
        }
        

        
        if([tagName isEqualToString:RESOURCE_ID_PLAY_PROMPT_LABEL_Y])
        {
            x=4;
            y=24;
            w=320;
            h=25;
            if(heightOffset>0)
            {
                y=30;
                h=28;
            }
            
        }
        
        if([tagName isEqualToString:RESOURCE_ID_PLAY_CELL_AREA])
        {
            x=0;
            y=44;
            w=320;
            h=310;
            if(heightOffset>0)
            {
                w=320;
                h=320;
                y=SIZE_PAGE_MARGIN_TOP/2+60+2;
            }
            
        }
        
        if([tagName isEqualToString:RESOURCE_ID_PLAY_KEYBOARD]||[tagName isEqualToString:RESOURCE_ID_PLAY_FINISH_MENU])
        {
            x=0;
            y=44+310+1;
            w=320;
            h=105;
            if(heightOffset>0)
            {
                y=SIZE_PAGE_MARGIN_TOP/2+60+320+6;
                h=120;
            }
        }
         
        if([tagName isEqualToString:RESOURCE_ID_PLAY_FINISH_MENU_PREV])         {x=5;y=10;w=150;h=48;}
        if([tagName isEqualToString:RESOURCE_ID_PLAY_FINISH_MENU_NEXT])         {x=165;y=10;w=150;h=48;}
        if([tagName isEqualToString:RESOURCE_ID_PLAY_FINISH_MENU_CLEAR])        {x=5;y=60;w=150;h=48;}
        if([tagName isEqualToString:RESOURCE_ID_PLAY_FINISH_MENU_SELECT])       {x=165;y=60;w=150;h=48;}

        if([tagName isEqualToString:RESOURCE_BG_PLAY_KEY])
        {
            //id
            x=0;
            y=0;
            w=50;
            h=50;
            
        }
        
        if([tagName isEqualToString:RESOURCE_BG_HELP_TABLE])
        {
            x=10;
            y=SIZE_PAGE_MARGIN_TOP+4;
            w=300;
            h=400;
            if(heightOffset>0)
            {
                h+=90;
            }

        }
        
        if([tagName isEqualToString:RESOURCE_ID_HELP_TABLE])
        {
            x=21;
            y=SIZE_PAGE_MARGIN_TOP+36;
            w=282;
            h=356;
            if(heightOffset>0)
            {
                h+=90;
            }


        }
        if([tagName isEqualToString:RESOURCE_ID_HELP_CELL])
        {
            x=0;
            y=0;
            w=279;
            h=44;
        }
        
        
        if([tagName isEqualToString:RESOURCE_ID_HELP_CELL_TITLE])
        {
            x=8;
            y=-4;
            w=240;
            h=36;
        }
        
        if([tagName isEqualToString:RESOURCE_ID_HELP_CELL_SUBTITLE])
        {
            x=8;
            y=20;
            w=240;
            h=26;
        }
        if([tagName isEqualToString:RESOURCE_ID_HELP_CELL_CHECKBUTTON]||[tagName isEqualToString:RESOURCE_ID_HELP_CELL_INAPPBUTTON])
        {
            x=210;
            y=7;
            w=66;
            h=30;
        }
        
        if([tagName isEqualToString:RESOURCE_ID_SCORE_BOARD_LEVEL])
        {
            x=80;
            y=10;
            w=48;
            h=64;
        }
        
        
        if([tagName isEqualToString:RESOURCE_BG_EXTRA])
        {
            x=25;
            y=400+heightOffset;
            w=270;
            h=64;
        }
        
        
        //ad hidden
        //if([tagName isEqualToString:CONFIG_TAG_AD_IDIANPING_IS_SHOW])       {x=-100;y=-100;w=48;h=48;}
        //if([tagName isEqualToString:CONFIG_TAG_AD_GAO7_IS_SHOW])       {x=-100;y=-100;w=48;h=48;}
        
        //webview
        if([tagName isEqualToString:RESOURCE_ID_WEBVIEW])       {x=0;y=40;w=320;h=460-40+heightOffset;}
        if([tagName isEqualToString:RESOURCE_ID_WEBVIEW_TOOLBAR])       {x=0;y=460-46+heightOffset;w=320;h=46;}
        
        
        if ([tagName isEqualToString:RESOURCE_BG_EXTRA])   {w=320;h=60;x=0;y=460+heightOffset-h;}
        
        if([tagName isEqualToString:RESOURCE_IC_EXTRABUTTON])
        {
            x=0;
            y=0;
            w=48;
            h=48;
        }


         */

    }
    return CGRectMake(x, y, w, h);
}
+(CGPoint)center:(kFrameButton)button viewSize:(CGSize)viewSize
{
    
    if ([LUISystem device]>=iPad)
    {
        
    }
    else
    {
        int heightOffset=[self iPhone5Height];
        
        switch (button)
        {
            case kFrameButtonPlay:
                return CGPointMake(160,220+(60+(heightOffset/5)));
                break;
            case kFrameButtonContinue:
                return CGPointMake(160,220+(70+(heightOffset/5))*2);
                break;
                
            case kFrameButtonHelp:
                return CGPointMake(10+24,10+24);
                break;
                
            case kFrameButtonShop:
                return CGPointMake(10+24+52,10+24);
                break;
                
            case kFrameButtonCoin:
                return CGPointMake(10+24+52,10+24);
                break;
            case kFrameButtonGameCenter:
                return CGPointMake(10+24+52*2,10+24);
                break;
                
            case kFrameButtonBack:
                return CGPointMake(290,32);
                
            case kFrameButtonPlay1:
                return CGPointMake(160,140+(55+(heightOffset/5)));
                break;
            case kFrameButtonPlay2:
                return CGPointMake(160,140+(55+(heightOffset/5))*2);
                break;
            case kFrameButtonPlay3:
                return CGPointMake(160,140+(55+(heightOffset/5))*3);
                break;
            case kFrameButtonPlay4:
                return CGPointMake(160,140+(55+(heightOffset/5))*4);
                break;
                
            case kFrameWallButtonDomob:
                return CGPointMake(160,100+(55+(heightOffset/6)));
                break;
            case kFrameWallButtonWaps:
                return CGPointMake(160,100+(55+(heightOffset/6))*3);
                break;
            case kFrameWallButtonYJF:
                return CGPointMake(160,100+(55+(heightOffset/6))*4);
                break;
            case kFrameWallButtonYoumi:
                return CGPointMake(160,100+(55+(heightOffset/6))*2);
            case kFrameWallButtonLiMei:
                return CGPointMake(160,100+(55+(heightOffset/6))*5);
            case kFrameWallButtonCheckCoin:
                return CGPointMake(160,100+(55+(heightOffset/6))*6);
                break;
                
            default:
                break;
        }
    }
    return CGPointMake(0, 0);
    
}

+(CGSize)size:(NSString *)tagName
{
    return [self size:tagName extraID:0];
}

+(CGSize)size:(NSString *)tagName extraID:(int)id
{
    if ([LUISystem device]>=iPad) {
    }
    else
    {
        /*
        if([tagName isEqualToString:RESOURCE_ID_PROMPT])
        {
            return CGSizeMake(28.0,24.0);
        }
        
        if ([tagName isEqualToString:RESOURCE_BG_START]||[tagName isEqualToString:RESOURCE_BG_HOME]||[tagName isEqualToString:RESOURCE_BG_PAGE]||[tagName isEqualToString:RESOURCE_BG_PLAY]) {
            return CGSizeMake(320, 568);
        }
        if ([tagName isEqualToString:RESOURCE_BG_BUTTON_MENU]) {
            return CGSizeMake(150, 48);
        }
        if ([tagName isEqualToString:RESOURCE_BG_BUTTON_BACK]) {
            return CGSizeMake(32,32);
        }
         
        if ([tagName isEqualToString:RESOURCE_IC_BUTTON_PLAY])
        {
            return CGSizeMake(200,64);
            
        }
        if ([tagName isEqualToString:RESOURCE_IC_BUTTON_PLAY1]||[tagName isEqualToString:RESOURCE_IC_BUTTON_PLAY2]||[tagName isEqualToString:RESOURCE_IC_BUTTON_PLAY3]||[tagName isEqualToString:RESOURCE_IC_BUTTON_PLAY4])
        {
            return CGSizeMake(144,45);
            
        }
        if ([tagName isEqualToString:RESOURCE_IC_BUTTON_DOMOB]||[tagName isEqualToString:RESOURCE_IC_BUTTON_YOUMI]||[tagName isEqualToString:RESOURCE_IC_BUTTON_WAPS]||[tagName isEqualToString:RESOURCE_IC_BUTTON_YJF]||[tagName isEqualToString:RESOURCE_IC_BUTTON_LIMEI]||[tagName isEqualToString:RESOURCE_IC_BUTTON_CHECKCOIN])
        {
            return CGSizeMake(144,45);
            
        }
        if ([tagName isEqualToString:RESOURCE_IC_BUTTON_HELP]||[tagName isEqualToString:RESOURCE_IC_BUTTON_SHOP]||[tagName isEqualToString:RESOURCE_IC_BUTTON_COIN]||[tagName isEqualToString:RESOURCE_IC_BUTTON_GAME_CENTER]||[tagName isEqualToString:RESOURCE_IC_BUTTON_70APPS])
        {
            return CGSizeMake(48,48);
        }
        
        if ([tagName isEqualToString:RESOURCE_IC_EXTRABUTTON_COIN]||[tagName isEqualToString:RESOURCE_IC_EXTRABUTTON_70APPS]||[tagName isEqualToString:RESOURCE_IC_EXTRABUTTON_GAMECENTER]||[tagName isEqualToString:RESOURCE_IC_EXTRABUTTON_HELP]||[tagName isEqualToString:RESOURCE_IC_EXTRABUTTON_SHOP])
        {
            return CGSizeMake(48, 48);
        }
        
        
        if ([tagName isEqualToString:RESOURCE_BG_PROMPT]) {
            return CGSizeMake(305.0, 160.0);
        }
        if ([tagName isEqualToString:RESOURCE_BG_HELP_TABLE]) {
            return CGSizeMake(320.0, 320.0);
        }
         */
    }
//    if ([tagName isEqualToString:RESOURCE_ID_PLAY_CELL_INPUT])
//    {
//        if(id==0)id=10;
//
//        int areaWidth=[self bound:RESOURCE_ID_PLAY_CELL_AREA].size.height;
//
//        return CGSizeMake(areaWidth/id, areaWidth/id/1.5);
//    }
    return CGSizeMake(10,10);
}
+(UIView *)bg:(NSString *)tagName
{
    NSLog(@"%@",[self name:tagName]);
    UIImageView *bg = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[self name:tagName]]];
    
    CGSize bgSize=[self size:tagName];
    
    bg.frame=CGRectMake(-1*(bgSize.width-[LUISystem deviceLayoutWidth])/2, 0, bgSize.width, bgSize.height);
    
    /*
     if ([tagName isEqualToString:RESOURCE_BG_PLAY]) {
        if ([UISystem device]<=iPhoneRetnia) {
            bg.frame=CGRectMake(-1*(bgSize.width-[UISystem deviceLayoutWidth])/2, -64, bgSize.width, bgSize.height);
        }
    }
     */
    bg.autoresizingMask=UIViewContentModeTop;
    //bg.tag=RESOURCE_TAG_BG;
    return bg;
}


+(UIColor *)color:(NSString*)tagName
{
    return [UIColor colorWithHue:19/360 saturation:0.7 brightness:0.3 alpha:1.0];
}
+(UIColor *)colorBG:(NSString*)tagName
{
    return [UIColor clearColor];
}
+(UIColor *)colorHL:(NSString*)tagName
{
    return [UIColor lightGrayColor];
}
+(UIColor *)colorSH:(NSString*)tagName
{
    
    return [UIColor colorWithHue:0.075 saturation:0.0 brightness:0.80 alpha:1.0];
}
+(NSString *)dataPlistName
{
//    return [NSString stringWithFormat:RESOURCE_DATA_PLIST_NAME,[FrameConfig getAppConfigNumber:CONFIG_GAME_VERSIION]];
    return @"";
}
+(CGFloat)iPhone5Height
{
    
    CGFloat heightOffset=0.0;
    if([LUISystem device]==iPhone5)
    {
        heightOffset=80.0;
    }
    return heightOffset;
}
+(CGFloat)LUIWidth
{
    
    return 800.0;
}
+(CGFloat)LUIHeight
{
    return 1300.0;
}
+(UIView *)box:(NSString*)tagName cornerRadius:(CGFloat)radiusValue
{
    CGRect f = [self bound:tagName];
    UIColor *bgColor =[self color:tagName];
    return [self box:f bgColor:bgColor cornerRadius:radiusValue];
}
+(UIView *)box:(CGRect)frame bgColor:(UIColor *)bgColor cornerRadius:(CGFloat)radiusValue
{
    UIView *box = [[UIView alloc]initWithFrame:frame];
    [box setBackgroundColor:bgColor];
    if(radiusValue>0){
        box.layer.cornerRadius=radiusValue;
    }
    if(radiusValue==0){
        box.layer.cornerRadius=frame.size.height/2;
    }
    return box;
}
@end
