//
//  ViewController.m
//  FZYWKWebView
//
//  Created by 威盛电气 on 2017/4/26.
//  Copyright © 2017年 GG. All rights reserved.
//

#import "ViewController.h"
#import "WKWebViewController.h"

#define Height self.view.frame.size.height
#define Width self.view.frame.size.width
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
self.title = @"WKWebView";
    
    [self buttonInitWith:CGRectMake((Width-100)/2,200, 100, 45) withTitle:@"确定" withBlock:^{
        
    }];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//    btn.frame = CGRectMake(100, 100, 100, 30);
//    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
//    btn.backgroundColor = [UIColor greenColor];
//    [btn setTitle:@"start" forState:UIControlStateNormal];
//    [self.view addSubview:btn];
//    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    
   
}


-(UIButton *)buttonInitWith:(CGRect)frame withTitle:(NSString *)name withBlock:(void(^)())block{
    UIButton *button=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame=frame;
    [button setTitle:name forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    block();
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    return button;
}



-(void)buttonClick:(UIButton *)sender
{
    WKWebViewController *web = [[WKWebViewController alloc] init];
    [web loadWebURLSring:@"http://www.baidu.com"];
    [self.navigationController pushViewController:web animated:YES];
}


@end
