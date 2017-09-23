//
//  ViewController.m
//  BMHUD
//
//  Created by __liangdahong on 2017/9/22.
//  Copyright © 2017年 http://idhong.com. All rights reserved.
//

#import "ViewController.h"
#import "BMHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [BMHUD showWithStatus:@"....."];
    [BMHUD showWithStatus:@"....."];
    [BMHUD showWithStatus:@"加载中..."];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (arc4random_uniform(2)) {
            if (arc4random_uniform(2)) {
                [BMHUD showInfoWithStatus:@"info"];
            } else {
                [BMHUD showTextWithStatus:@"login ok" afterDelay:1.0];
            }
        } else {
            if (arc4random_uniform(2)) {
                [BMHUD showErrorWithStatus:@"error"];
            } else {
                [BMHUD showSuccessWithStatus:@"ok"];
            }
        }
    });
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (arc4random_uniform(2)) {
            if (arc4random_uniform(2)) {
                [BMHUD showInfoWithStatus:@"info"];
            } else {
                [BMHUD showTextWithStatus:@"login ok" afterDelay:1.0];
            }
        } else {
            if (arc4random_uniform(2)) {
                [BMHUD showErrorWithStatus:@"error"];
            } else {
                [BMHUD showSuccessWithStatus:@"ok"];
            }
        }
    });
    
}

@end
