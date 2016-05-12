//
//  ViewController.m
//  segementXM
//
//  Created by zhiyou on 16-5-2.
//  Copyright (c) 2016年 zhiyou. All rights reserved.
//

#import "ViewController.h"
#import "UIParameter.h"
#import "NinaPagerView.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourViewController.h"
#import "FiveViewController.h"
#import "SixViewController.h"
#import "SevenViewController.h"
#import "EightViewController.h"
#import "NinthViewController.h"
@interface ViewController ()<NinaPagerViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"应用导航栏标题";
    self.navigationController.navigationBar.translucent = NO;
    NSArray *titleArray = @[  @"六安市",
                              @"金安区",
                              @"舒城县",
                              @"寿县",
                              @"霍山县",
                              @"金寨县",
                              @"上海",
                              @"人民广场",
                              @"东方明珠"];
    NSArray *vcs = @[@"FirstViewController",
                     @"SecondViewController",
                     @"ThirdViewController",
                     @"FourViewController",
                     @"FiveViewController",
                     @"SixViewController",
                     @"SevenViewController",
                     @"EightViewController",
                     @"NinthViewController"];
    NSMutableArray * detailArr = [NSMutableArray array];
    for (int i = 0; i < 9; i ++) {
        Class aClass = NSClassFromString(vcs[i]);
        UIViewController * vc = [[aClass alloc]init];
        [detailArr addObject:vc];
    }
    NSArray * colorArr = @[[UIColor redColor],//标题选中颜色
                           [UIColor blackColor],//标题未选中颜色
                           [UIColor blackColor],//下划线颜色
                           [UIColor whiteColor],];//背景颜色
    NinaPagerView * pagerView = [[NinaPagerView alloc]initWithTitles:titleArray WithVCs:detailArr WithColorArrays:colorArr];
    pagerView.delegate = self;
    [self.view addSubview:pagerView];
    pagerView.pushEnabled = NO;
}
- (BOOL)deallocVCsIfUnnecessary {
    return YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
