
#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)
//if (SYSTEM_VERSION_LESS_THAN(@"4.0")) {
//if (SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"3.1.1")) {
typedef enum
{
    iPhoneType          = 1 << 1,
    iPhoneRetniaType    = 1 << 2,
    iPhone5Type         = 1 << 3,
    iPadType            = 1 << 4,
    iPadRetniaType      = 1 << 5,
    iPhone6Type      = 1 << 6,
    iPhone6pType      = 1 << 7
    
} DeviceType;
typedef enum
{
    iPhone          = 1,
    iPhoneRetnia    = 2,
    iPhone5         = 3,
    iPad            = 4,
    iPadRetnia      = 5,
    iPhone6         = 6,
    iPhone6p        = 7
    
} Device;

@interface LUISystem : NSObject
{    
    bool isPad;
    
    NSString *UUID;
}
@property (nonatomic) bool isPad;

@property (nonatomic,assign) NSString *UUID;

+(BOOL)isPadPortrait;
+ (NSString *)GetUUID;
+ (DeviceType)deviceType;
+ (Device)device;
+ (int)deviceLayoutWidth;
+ (int)deviceLayoutHeight;
+(int)deviceViewWidth:(CGSize)viewSize;

+ (NSString *)macAddress;
+ (NSString *)adAddress;

+(CGFloat)iOS7Padding;
@end
