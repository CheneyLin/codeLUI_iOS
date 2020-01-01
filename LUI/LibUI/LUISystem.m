

#import "LUISystem.h"


#import <sys/socket.h>
#import <sys/sysctl.h>
#import <net/if.h>
#import <net/if_dl.h>

@implementation LUISystem
@synthesize isPad;

@synthesize UUID=_UUID;

- (NSString *)UUID
{
    if (_UUID==nil)
    {
        CFUUIDRef theUUID = CFUUIDCreate(NULL);
        CFStringRef string = CFUUIDCreateString(NULL, theUUID);
        CFRelease(theUUID);

        _UUID=(__bridge NSString *)string;
    }
    return _UUID;
}
+ (NSString *)GetUUID
{
    CFUUIDRef theUUID = CFUUIDCreate(NULL);
    CFStringRef string = CFUUIDCreateString(NULL, theUUID);
    CFRelease(theUUID);
    return (__bridge NSString *)string;
}

+ (Device)device
{
    Device thisDevice = 0;
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        thisDevice = iPhone;
        if ([[UIScreen mainScreen] respondsToSelector: @selector(scale)])
            if ([UIScreen mainScreen].scale>1)
        {
            thisDevice = iPhoneRetnia;
            if ([[UIScreen mainScreen] bounds].size.height == 568)
                thisDevice = iPhone5;
            if ([[UIScreen mainScreen] bounds].size.height == 667)
                thisDevice = iPhone6;
            if ([[UIScreen mainScreen] bounds].size.height == 736)
                thisDevice = iPhone6p;
        }
    }
    else
    {
        thisDevice = iPad;
        if ([[UIScreen mainScreen] respondsToSelector: @selector(scale)])
        {
            if ([UIScreen mainScreen].scale>1) {
                
                thisDevice = iPadRetnia;
            }
        }
    }
    return thisDevice;
}


+ (DeviceType)deviceType
{
    DeviceType thisDevice = 0;
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        thisDevice |= iPhoneType;
        if ([[UIScreen mainScreen] respondsToSelector: @selector(scale)])
        {
            thisDevice |= iPhoneRetniaType;
            if ([[UIScreen mainScreen] bounds].size.height == 568)
                thisDevice |= iPhone5Type;
            if ([[UIScreen mainScreen] bounds].size.height == 667)
                thisDevice |= iPhone6Type;
            if ([[UIScreen mainScreen] bounds].size.height == 736)
                thisDevice |= iPhone6pType;
        }
    }
    else
    {
        thisDevice |= iPadType;
        if ([[UIScreen mainScreen] respondsToSelector: @selector(scale)])
        if ([UIScreen mainScreen].scale>1) {
            
            thisDevice |= iPadRetniaType;
        }
    }
    return thisDevice;
}

+ (int)deviceLayoutWidth
{
    
    return [[UIScreen mainScreen] bounds].size.width;
    /*
     if ([LUISystem deviceType]&iPadType)
     {
     if ([LUISystem isPadPortrait])
     {
     return 768;
     }
     else
     {
     return 1024;
     }
     }
     else
     {
     return [[UIScreen mainScreen] bounds].size.width;
     }

     */
}
+ (int)deviceLayoutHeight
{
    
    return [[UIScreen mainScreen] bounds].size.height;
/*
 if ([LUISystem deviceType]&iPadType)
 {
 CGSize s=[[UIScreen mainScreen] bounds].size;
 if ([LUISystem isPadPortrait])
 {
 
 if(s.width>s.height){
 return s.height;
 }else{
 return s.width;
 }
 }
 else
 {
 return 768;
 }
 }
 else
 {
 return [[UIScreen mainScreen] bounds].size.height;
 }
 */
}

+(BOOL)isPadPortrait
{
    NSLog(@"%f",[UIApplication sharedApplication].statusBarFrame.size.width);
    NSLog(@"%f",[[UIScreen mainScreen] bounds].size.width);
    NSLog(@"%f",[[UIScreen mainScreen] bounds].size.height);
//    if (![UIApplication sharedApplication].statusBarHidden) {
//        if([UIApplication sharedApplication].statusBarFrame.size.width==768.0)
//        {
//            return YES;
//        }
//        else
//        {
//            return NO;
//        }
//    }
    UIDeviceOrientation deviceOrientation = [UIDevice currentDevice].orientation;
    if (UIDeviceOrientationIsLandscape(deviceOrientation) )
    {
        return NO;
    }
        else if (UIDeviceOrientationIsPortrait(deviceOrientation) )
        {
            return YES;
        }
    
    return YES;
    
}

+(int)deviceViewWidth:(CGSize)viewSize;
{
    
    if (viewSize.width==748||viewSize.height==748) {
        return 1024;
    }
    if (viewSize.width==768||viewSize.height==768) {
        return 768;
    }
    
    return viewSize.width;
    
}

+ (NSString *)adAddress
{
    //return [[[ASIdentifierManager sharedManager] advertisingIdentifier]UUIDString];
    return @"";
}

+ (NSString *)macAddress
{
    int                 mgmtInfoBase[6];
    char                *msgBuffer = NULL;
    size_t              length;
    unsigned char       macAddress[6];
    struct if_msghdr    *interfaceMsgStruct;
    struct sockaddr_dl  *socketStruct;
    NSString            *errorFlag = NULL;
    
    // Setup the management Information Base (mib)
    mgmtInfoBase[0] = CTL_NET;        // Request network subsystem
    mgmtInfoBase[1] = AF_ROUTE;       // Routing table info
    mgmtInfoBase[2] = 0;
    mgmtInfoBase[3] = AF_LINK;        // Request link layer information
    mgmtInfoBase[4] = NET_RT_IFLIST;  // Request all configured interfaces
    
    // With all configured interfaces requested, get handle index
    if ((mgmtInfoBase[5] = if_nametoindex("en0")) == 0)
        errorFlag = @"if_nametoindex failure";
    else
    {
        // Get the size of the data available (store in len)
        if (sysctl(mgmtInfoBase, 6, NULL, &length, NULL, 0) < 0)
            errorFlag = @"sysctl mgmtInfoBase failure";
        else
        {
            // Alloc memory based on above call
            if ((msgBuffer = malloc(length)) == NULL)
                errorFlag = @"buffer allocation failure";
            else
            {
                // Get system information, store in buffer
                if (sysctl(mgmtInfoBase, 6, msgBuffer, &length, NULL, 0) < 0)
                    errorFlag = @"sysctl msgBuffer failure";
            }
        }
    }
    // Befor going any further...
    if (errorFlag != NULL)
    {
        NSLog(@"Error: %@", errorFlag);
        return errorFlag;
    }
    // Map msgbuffer to interface message structure
    interfaceMsgStruct = (struct if_msghdr *) msgBuffer;
    // Map to link-level socket structure
    socketStruct = (struct sockaddr_dl *) (interfaceMsgStruct + 1);
    // Copy link layer address data in socket structure to an array
    memcpy(&macAddress, socketStruct->sdl_data + socketStruct->sdl_nlen, 6);
    // Read from char array into a string object, into traditional Mac address format
    NSString *macAddressString = [NSString stringWithFormat:@"%02X%02X%02X%02X%02X%02X",
                                  macAddress[0], macAddress[1], macAddress[2],
                                  macAddress[3], macAddress[4], macAddress[5]];
    //NSLog(@"Mac Address: %@", macAddressString);
    // Release the buffer memory
    free(msgBuffer);
    return macAddressString;
}

+(CGFloat)iOS7Padding
{
    
    CGFloat heightOffset=0.0;
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0)
    {
        heightOffset=20.0;
//        
//        if ([UISystem device]==iPhone6) {
//            heightOffset=24.0;
//        }
//        if ([UISystem device]==iPhone6p) {
//            heightOffset=24.0;
//        }
        
    }
    return heightOffset;
}

@end
