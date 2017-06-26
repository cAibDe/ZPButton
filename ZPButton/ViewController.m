//
//  ViewController.m
//  ZPButton
//
//  Created by 张鹏 on 2017/6/26.
//  Copyright © 2017年 c4ibD3. All rights reserved.
//

#import "ViewController.h"
#import "ZPButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    ZPButton *button = [[ZPButton alloc]initWithFrame:CGRectMake(100, 100, 180, 80)];
    button.orientation = ZPButtonTextOrientationTop;
    [button setTitle:@"123" forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"dog"] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
    [button setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
}
- (void)buttonAction:(UIButton *)button{
    button.selected = !button.selected;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
