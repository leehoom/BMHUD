//
//  BMHUD.m
//  BMHUD
//
//  Created by __liangdahong on 2017/9/23.
//  Copyright © 2017年 http://idhong.com. All rights reserved.
//

#import "BMHUD.h"
#import <MBProgressHUD/MBProgressHUD.h>

#define kKeyWindow [[UIApplication sharedApplication] keyWindow]
#define kTime .98f

@implementation BMHUD

#pragma mark - 添加到windos 屏蔽事件

// loading
+ (void)show {
    [self showWithStatus:nil];
}

+ (void)showWithStatus:(NSString *)status {
    [self bm_showWithToView:kKeyWindow status:status mode:MBProgressHUDModeIndeterminate imageName:nil userInteractionEnabled:YES];
}

// 成功
+ (void)showSuccess {
    [self showSuccessWithStatus:nil];
}

+ (void)showSuccessWithStatus:(NSString*)status {
    [self showSuccessWithStatus:status afterDelay:kTime];
}

+ (void)showSuccessWithStatus:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:kKeyWindow status:status mode:MBProgressHUDModeCustomView imageName:@"success" userInteractionEnabled:YES];
    [self dismissToView:kKeyWindow afterDelay:afterDelay];
}

// 警告
+ (void)showInfo {
    [self showInfoWithStatus:nil];
}

+ (void)showInfoWithStatus:(NSString*)status {
    [self showInfoWithStatus:status afterDelay:kTime];
}

+ (void)showInfoWithStatus:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:kKeyWindow status:status mode:MBProgressHUDModeCustomView imageName:@"info" userInteractionEnabled:YES];
    [self dismissToView:kKeyWindow afterDelay:afterDelay];
}

// 错误
+ (void)showError {
    [self showErrorWithStatus:nil];
}

+ (void)showErrorWithStatus:(NSString*)status {
    [self showErrorWithStatus:status afterDelay:kTime];

}
+ (void)showErrorWithStatus:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:kKeyWindow status:status mode:MBProgressHUDModeCustomView imageName:@"error" userInteractionEnabled:YES];
    [self dismissToView:kKeyWindow afterDelay:afterDelay];
}

// 文字
+ (void)showTextWithStatus:(NSString*)status {
    [self showTextWithStatus:status afterDelay:kTime];
}

+ (void)showTextWithStatus:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:kKeyWindow status:status mode:MBProgressHUDModeCustomView imageName:nil userInteractionEnabled:YES];
    [self dismissToView:kKeyWindow afterDelay:afterDelay];
}

#pragma mark - 添加到windos 开启事件

// loading
+ (void)showResponse {
    [self showResponseWithStatus:nil];
}
+ (void)showResponseWithStatus:(NSString *)status {
    [self bm_showWithToView:kKeyWindow status:status mode:MBProgressHUDModeIndeterminate imageName:nil userInteractionEnabled:NO];
}

// 成功
+ (void)showSuccessResponse {
    [self showSuccessResponseWithStatus:nil];
}

+ (void)showSuccessResponseWithStatus:(NSString*)status {
    [self showSuccessResponseWithStatus:status afterDelay:kTime];
}

+ (void)showSuccessResponseWithStatus:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:kKeyWindow status:status mode:MBProgressHUDModeCustomView imageName:@"success" userInteractionEnabled:NO];
    [self dismissToView:kKeyWindow afterDelay:afterDelay];
}
// 警告

+ (void)showInfoResponse {
    [self showInfoResponseWithStatus:nil];
}
+ (void)showInfoResponseWithStatus:(NSString*)status {
    [self showInfoResponseWithStatus:status afterDelay:kTime];
}
+ (void)showInfoResponseWithStatus:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:kKeyWindow status:status mode:MBProgressHUDModeCustomView imageName:@"info" userInteractionEnabled:NO];
    [self dismissToView:kKeyWindow afterDelay:afterDelay];
}

// 错误
+ (void)showErrorResponse {
    [self showErrorResponseWithStatus:nil];
}

+ (void)showErrorResponseWithStatus:(NSString*)status {
    [self showErrorResponseWithStatus:status afterDelay:kTime];
}

+ (void)showErrorResponseWithStatus:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:kKeyWindow status:status mode:MBProgressHUDModeCustomView imageName:@"error" userInteractionEnabled:NO];
    [self dismissToView:kKeyWindow afterDelay:afterDelay];
}

// 文字
+ (void)showTextResponseWithStatus:(NSString*)status {
    [self showTextResponseWithStatus:status afterDelay:kTime];
}

+ (void)showTextResponseWithStatus:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:kKeyWindow status:status mode:MBProgressHUDModeCustomView imageName:nil userInteractionEnabled:NO];
    [self dismissToView:kKeyWindow afterDelay:afterDelay];
}

// loading
+ (void)showToView:(UIView *)view {
    [self showToView:view status:nil];
}

+ (void)showToView:(UIView *)view status:(NSString *)status {
    [self bm_showWithToView:view status:status mode:MBProgressHUDModeIndeterminate imageName:nil userInteractionEnabled:YES];
}

// 成功
+ (void)showSuccessToView:(UIView *)view {
    [self showSuccessToView:view status:nil];
}

+ (void)showSuccessToView:(UIView *)view status:(NSString*)status {
    [self showSuccessToView:view status:status afterDelay:kTime];
}

+ (void)showSuccessToView:(UIView *)view status:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:view status:status mode:MBProgressHUDModeCustomView imageName:@"success" userInteractionEnabled:YES];
    [self dismissToView:view afterDelay:afterDelay];
}
// 警告
+ (void)showInfoToView:(UIView *)view {
    [self showInfoToView:view status:nil];
}

+ (void)showInfoToView:(UIView *)view status:(NSString*)status {
    [self showInfoToView:view status:status afterDelay:kTime];
}

+ (void)showInfoToView:(UIView *)view status:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:view status:status mode:MBProgressHUDModeCustomView imageName:@"info" userInteractionEnabled:YES];
    [self dismissToView:view afterDelay:afterDelay];

}
// 错误
+ (void)showErrorToView:(UIView *)view {
    [self showErrorToView:view status:nil];
}

+ (void)showErrorToView:(UIView *)view status:(NSString*)status {
    [self showErrorToView:view status:status afterDelay:kTime];
}

+ (void)showErrorToView:(UIView *)view status:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:view status:status mode:MBProgressHUDModeCustomView imageName:@"error" userInteractionEnabled:YES];
    [self dismissToView:view afterDelay:afterDelay];
}

// 文字
+ (void)showTextToView:(UIView *)view status:(NSString*)status {
    [self showTextToView:view tatus:status afterDelay:kTime];
}

+ (void)showTextToView:(UIView *)view tatus:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:view status:status mode:MBProgressHUDModeCustomView imageName:nil userInteractionEnabled:YES];
    [self dismissToView:view afterDelay:afterDelay];
}

// loading
+ (void)showResponseToView:(UIView *)view {
    [self showResponseToView:view status:nil];
}

+ (void)showResponseToView:(UIView *)view status:(NSString *)status {
    [self bm_showWithToView:view status:status mode:MBProgressHUDModeIndeterminate imageName:nil userInteractionEnabled:NO];
}
// 成功
+ (void)showSuccessResponseToView:(UIView *)view {
    [self showSuccessResponseToView:view status:nil];
}

+ (void)showSuccessResponseToView:(UIView *)view status:(NSString*)status {
    [self showSuccessResponseToView:view status:status afterDelay:kTime];
}

+ (void)showSuccessResponseToView:(UIView *)view status:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:view status:status mode:MBProgressHUDModeCustomView imageName:@"success" userInteractionEnabled:NO];
    [self dismissToView:view afterDelay:afterDelay];
}

// 警告
+ (void)showInfoResponseToView:(UIView *)view {
    [self showInfoResponseToView:view status:nil];
}

+ (void)showInfoResponseToView:(UIView *)view status:(NSString*)status {
    [self showInfoResponseToView:view status:status afterDelay:kTime];
}

+ (void)showInfoResponseToView:(UIView *)view status:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:view status:status mode:MBProgressHUDModeCustomView imageName:@"info" userInteractionEnabled:NO];
    [self dismissToView:view afterDelay:afterDelay];
}
// 错误
+ (void)showErrorResponseToView:(UIView *)view {
    [self showErrorResponseToView:view status:nil];
}

+ (void)showErrorResponseToView:(UIView *)view status:(NSString*)status {
    [self showErrorResponseToView:view status:status afterDelay:kTime];
}

+ (void)showErrorResponseToView:(UIView *)view status:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:view status:status mode:MBProgressHUDModeCustomView imageName:@"error" userInteractionEnabled:NO];
    [self dismissToView:view afterDelay:afterDelay];
}

// 文字
+ (void)showTextResponseToView:(UIView *)view status:(NSString*)status {
    [self showTextResponseToView:view tatus:status afterDelay:kTime];
}

+ (void)showTextResponseToView:(UIView *)view tatus:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:view status:status mode:MBProgressHUDModeCustomView imageName:nil userInteractionEnabled:NO];
    [self dismissToView:view afterDelay:afterDelay];
}

#pragma mark - dismiss

+ (void)dismiss {
    [self dismissWithAfterDelay:0.0];
}

+ (void)dismissWithAfterDelay:(NSTimeInterval)afterDelay {
    [self dismissToView:kKeyWindow afterDelay:afterDelay];
}

+ (void)dismissToView:(UIView *)view {
    [self dismissToView:view afterDelay:0.0];
}

+ (void)dismissToView:(UIView *)view afterDelay:(NSTimeInterval)afterDelay {
    [self bm_dismissToView:view afterDelay:afterDelay];
}

#pragma mark - 私有方法

+ (void)bm_showWithToView:(UIView *)view
                   status:(NSString *)status
                     mode:(MBProgressHUDMode)mode
                imageName:(NSString *)name
   userInteractionEnabled:(BOOL)userInteractionEnabled {
    // dismiss
    [self dismissToView:view];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.backgroundView.style = MBProgressHUDBackgroundStyleSolidColor;
    hud.mode = mode;
    if (name.length) {
        hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:name]];
    }
    hud.userInteractionEnabled = userInteractionEnabled;
    hud.label.text = status;
    [hud showAnimated:YES];
}

+ (void)bm_dismissToView:(UIView *)view
              afterDelay:(NSTimeInterval)afterDelay {
    [view.subviews enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj isKindOfClass:MBProgressHUD.class]) {
            [(MBProgressHUD *)obj hideAnimated:YES afterDelay:afterDelay];
        }
    }];
}

@end
