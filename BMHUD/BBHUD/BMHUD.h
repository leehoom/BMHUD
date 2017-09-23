//
//  BMHUD.h
//  BMHUD
//
//  Created by __liangdahong on 2017/9/23.
//  Copyright © 2017年 http://idhong.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BMHUD : NSObject

#pragma mark - 添加到窗口 屏蔽事件

// loading
+ (void)show;
+ (void)showWithStatus:(NSString *)status;

// 成功
+ (void)showSuccess;
+ (void)showSuccessWithStatus:(NSString*)status;
+ (void)showSuccessWithStatus:(NSString*)status afterDelay:(NSTimeInterval)afterDelay;

// 警告
+ (void)showInfo;
+ (void)showInfoWithStatus:(NSString*)status;
+ (void)showInfoWithStatus:(NSString*)status afterDelay:(NSTimeInterval)afterDelay;

// 错误
+ (void)showError;
+ (void)showErrorWithStatus:(NSString*)status;
+ (void)showErrorWithStatus:(NSString*)status afterDelay:(NSTimeInterval)afterDelay;

// 文字
+ (void)showTextWithStatus:(NSString*)status;
+ (void)showTextWithStatus:(NSString*)status afterDelay:(NSTimeInterval)afterDelay;

#pragma mark - 添加到窗口 开启事件

// loading
+ (void)showResponse;
+ (void)showResponseWithStatus:(NSString *)status;

// 成功
+ (void)showSuccessResponse;
+ (void)showSuccessResponseWithStatus:(NSString*)status;
+ (void)showSuccessResponseWithStatus:(NSString*)status afterDelay:(NSTimeInterval)afterDelay;

// 警告
+ (void)showInfoResponse;
+ (void)showInfoResponseWithStatus:(NSString*)status;
+ (void)showInfoResponseWithStatus:(NSString*)status afterDelay:(NSTimeInterval)afterDelay;

// 错误
+ (void)showErrorResponse;
+ (void)showErrorResponseWithStatus:(NSString*)status;
+ (void)showErrorResponseWithStatus:(NSString*)status afterDelay:(NSTimeInterval)afterDelay;

// 文字
+ (void)showTextResponseWithStatus:(NSString*)status;
+ (void)showTextResponseWithStatus:(NSString*)status afterDelay:(NSTimeInterval)afterDelay;

#pragma mark - 添加到指定view 屏蔽事件

// loading
+ (void)showToView:(UIView *)view;
+ (void)showToView:(UIView *)view status:(NSString *)status;

// 成功
+ (void)showSuccessToView:(UIView *)view;
+ (void)showSuccessToView:(UIView *)view status:(NSString*)status;
+ (void)showSuccessToView:(UIView *)view status:(NSString*)status afterDelay:(NSTimeInterval)afterDelay;

// 警告
+ (void)showInfoToView:(UIView *)view;
+ (void)showInfoToView:(UIView *)view status:(NSString*)status;
+ (void)showInfoToView:(UIView *)view status:(NSString*)status afterDelay:(NSTimeInterval)afterDelay;

// 错误
+ (void)showErrorToView:(UIView *)view;
+ (void)showErrorToView:(UIView *)view status:(NSString*)status;
+ (void)showErrorToView:(UIView *)view status:(NSString*)status afterDelay:(NSTimeInterval)afterDelay;

// 文字
+ (void)showTextToView:(UIView *)view status:(NSString*)status;
+ (void)showTextToView:(UIView *)view tatus:(NSString*)status afterDelay:(NSTimeInterval)afterDelay;

#pragma mark - 添加到指定view 开启事件

// loading
+ (void)showResponseToView:(UIView *)view;
+ (void)showResponseToView:(UIView *)view status:(NSString *)status;

// 成功
+ (void)showSuccessResponseToView:(UIView *)view;
+ (void)showSuccessResponseToView:(UIView *)view status:(NSString*)status;
+ (void)showSuccessResponseToView:(UIView *)view status:(NSString*)status afterDelay:(NSTimeInterval)afterDelay;

// 警告
+ (void)showInfoResponseToView:(UIView *)view;
+ (void)showInfoResponseToView:(UIView *)view status:(NSString*)status;
+ (void)showInfoResponseToView:(UIView *)view status:(NSString*)status afterDelay:(NSTimeInterval)afterDelay;

// 错误
+ (void)showErrorResponseToView:(UIView *)view;
+ (void)showErrorResponseToView:(UIView *)view status:(NSString*)status;
+ (void)showErrorResponseToView:(UIView *)view status:(NSString*)status afterDelay:(NSTimeInterval)afterDelay;

// 文字
+ (void)showTextResponseToView:(UIView *)view status:(NSString*)status;
+ (void)showTextResponseToView:(UIView *)view tatus:(NSString*)status afterDelay:(NSTimeInterval)afterDelay;

#pragma mark - 隐藏HUD

#pragma mark - 隐藏添加在窗口上的HUD

+ (void)dismiss;
+ (void)dismissWithAfterDelay:(NSTimeInterval)afterDelay;

#pragma mark - 隐藏添加在指定View上的HUD

+ (void)dismissToView:(UIView *)view;
+ (void)dismissToView:(UIView *)view afterDelay:(NSTimeInterval)afterDelay;

@end
