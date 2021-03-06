//
//  ChatConfiguration.m
//  CDChatList
//
//  Created by chdo on 2017/12/5.
//

#import "ChatConfiguration.h"
#import "ChatHelpr.h"
#import "UITool.h"

@implementation ChatConfiguration

-(instancetype)init{
    
    self = [super init];
    
    self.environment = 1;
    
    self.msgBackGroundColor = CRMHexColor(0xEBEBEB);
    self.msgContentBackGroundColor = CRMHexColor(0xEBEBEB);
    self.headBackGroundColor = CRMHexColor(0xEBEBEB);
    self.msgTextContentBackGroundColor_right = CRMHexColor(0x06C0B5);
    self.msgTextContentBackGroundColor_left = CRMHexColor(0xF5F7FA);
    
    self.msgTimeH = 25.0f;
    self.sysInfoMessageMaxWidth = ScreenW() * 0.64f;
    self.headSideLength = 40.0f;
    self.sysInfoPadding = 8.0f;
    
    self.bubbleRoundAnglehorizInset = 10.0f;
    self.bubbleShareAngleWidth = 6.0f;
    self.messageMargin = 10.0f;
    self.bubbleMaxWidth = ScreenW() * 0.64f;
    self.bubbleSharpAngleHeighInset = 25.0f;
    self.nickNameHeight = 25.0f;
    
    self.messageTextDefaultFontSize = 16;
    self.messageTextDefaultFont = [UIFont systemFontOfSize: self.messageTextDefaultFontSize];
    self.sysInfoMessageFont = [UIFont systemFontOfSize:14];
    
    self.left_box = @"left_box";
    self.right_box = @"right_box";
    self.bg_mask_right = @"bg_mask_right";
    self.bg_mask_left = @"bg_mask_left";
    self.icon_head = @"icon_head";
    self.msgImagePlaceHolder = @"msgImagePlaceHolder";
    self.voice_right_1 = @"voice_right_1";
    self.voice_right_2 = @"voice_right_2";
    self.voice_right_3 = @"voice_right_3";
    self.voice_left_1 = @"voice_left_1";
    self.voice_left_2 = @"voice_left_2";
    self.voice_left_3 = @"voice_left_3";
    CTDataConfig config;
    
    config = [CTData defaultConfig];
    self.ctDataconfig = config;
    
    return self;
}

-(BOOL)isDebug{
    return self.environment == 0;
}

// 颜色

-(UIColor *)msgBackGroundColor{
    if ([self isDebug]) {
        return CRMHexColor(0xB5E7E1);
    } else {
        return _msgBackGroundColor;
    }
}

-(UIColor *)msgContentBackGroundColor{
    if ([self isDebug]) {
        return CRMHexColor(0x9E7777);
    } else {
        return _msgContentBackGroundColor;
    }
}

-(UIColor *)headBackGroundColor {
    if ([self isDebug]) {
        return [UIColor redColor];
    } else {
        return _headBackGroundColor;
    }
}

-(UIColor *)msgTextContentBackGroundColor_right{
    if ([self isDebug]) {
        return [UIColor cyanColor];
    } else {
        return _msgTextContentBackGroundColor_right;
    }
}

-(UIColor *)msgTextContentBackGroundColor_left{
    if ([self isDebug]) {
        return [UIColor magentaColor];
    } else {
        return _msgTextContentBackGroundColor_left;
    }
}

-(CGFloat)messageContentH{
    return self.messageMargin * 2 +  self.headSideLength;
}

-(CGFloat)bubbleSharpAnglehorizInset{
    return self.bubbleRoundAnglehorizInset + self.bubbleShareAngleWidth;
}

@end
