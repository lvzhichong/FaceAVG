//
//  FxIndexViewController.m
//  LawAPP
//
//  Created by lv on 2015-9-15.
//  Copyright (c) 2015年 lv. All rights reserved.
//

#import "FxIndexViewController.h"

//
#import "UIFont+Font.h"

@interface FxIndexViewController ()

@end

@implementation FxIndexViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    // 隐藏导航条
    self.navigationController.navigationBarHidden = YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 初始化页面
    [self initView];
}

/**
 *  初始化页面
 */
- (void)initView {
    // 背景图片
    UIImageView *bgImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"fx_index_background.png"]];
    
    bgImageView.frame = self.view.bounds;
    
    [self.view addSubview:bgImageView];
    
    // 高度比例
    CGRect deviceRect = [[UIScreen mainScreen] bounds];
    
    CGFloat iPhone_Width_Ratio = deviceRect.size.width / 320.0f;
    CGFloat iPhone_Height_Ratio = deviceRect.size.height / 480.0f;
    
    // LOGO
    UIImageView *logoImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"fx_index_logo"]];
    
    [self.view addSubview:logoImageView];
    
    [logoImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.view).offset(72.0f * iPhone_Height_Ratio);
        make.size.mas_equalTo(CGSizeMake(logoImageView.frame.size.width * iPhone_Width_Ratio, logoImageView.frame.size.height * iPhone_Width_Ratio));
    }];
    
    // 搜索框
    UITextField *searchTextField = [[UITextField alloc] init];
    
    searchTextField.placeholder = @"请输入关键词、法信码";
    searchTextField.font = [UIFont fontWithFZXH:FONT_SIZE_CONTENT];
    searchTextField.background = [[UIImage imageNamed:@"fx-index-search-border"] resizableImageWithCapInsets:UIEdgeInsetsMake(5, 5, 5, 5)];
    
    // 搜索框 - 左侧图片
    searchTextField.leftView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"fx-index-search-keyword"]];
    searchTextField.leftViewMode = UITextFieldViewModeAlways;
    
    // 搜索框 - 右侧图片
    
    
    [self.view addSubview:searchTextField];
    
    [searchTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(logoImageView.mas_bottom).offset(16.0f * iPhone_Height_Ratio);
        make.width.equalTo(self.view).offset(-24.0f * iPhone_Width_Ratio);
        make.height.mas_equalTo(40.0 * iPhone_Width_Ratio);
    }];
    
    // 五角星
    
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
