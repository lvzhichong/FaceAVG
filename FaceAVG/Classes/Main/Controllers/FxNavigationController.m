//
//  FxNavigationController.m
//  Nancool
//
//  Created by lv on 2015-11-20.
//  Copyright © 2015年 lv. All rights reserved.
//

#import "FxNavigationController.h"

//
#import "UIColor+Hex.h"
#import "UIFont+Font.h"

@interface FxNavigationController ()

@end

@implementation FxNavigationController


// 执行一次
+ (void)initialize {
    UINavigationBar *navBar = [UINavigationBar appearance];
    
    // 导航条颜色
    [navBar setBarTintColor:[UIColor colorWithHexString:MAIN_COLOR]];
    
    // 状态栏颜色
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    
    // 导航条标题样式设置
    NSDictionary *titleAttr = @{
                                // 颜色
                                NSForegroundColorAttributeName: [UIColor whiteColor],
                                // 字体
                                NSFontAttributeName: [UIFont fontWithFZXH:FONT_SIZE_TITLE]
                                };
    [navBar setTitleTextAttributes:titleAttr];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
