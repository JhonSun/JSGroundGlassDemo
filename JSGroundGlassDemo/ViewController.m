//
//  ViewController.m
//  JSGroundGlassDemo
//
//  Created by jhon.sun on 16/5/6.
//  Copyright © 2016年 jhon.sun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UIVisualEffectView *visualEffectView;
@property (strong, nonatomic) UIToolbar *toolbar;
@property (weak, nonatomic) IBOutlet UIImageView *testImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //ios8或以上实现毛玻璃效果
//    [self.testImageView addSubview:self.visualEffectView];
    //ios7或以上实现毛玻璃效果
    [self.testImageView addSubview:self.toolbar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - get
- (UIVisualEffectView *)visualEffectView {
    if (!_visualEffectView) {
        _visualEffectView = [[UIVisualEffectView alloc] initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleLight]];
        _visualEffectView.frame = self.testImageView.bounds;
    }
    return _visualEffectView;
}

- (UIToolbar *)toolbar {
    if (!_toolbar) {
        _toolbar = [[UIToolbar alloc] initWithFrame:self.testImageView.bounds];
        _toolbar.barStyle = UIBarStyleBlackTranslucent;
    }
    return _toolbar;
}
@end
