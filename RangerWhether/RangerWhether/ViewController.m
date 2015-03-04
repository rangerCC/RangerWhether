//
//  ViewController.m
//  RangerWhether
//
//  Created by guanliang.wgl on 15-3-4.
//  Copyright (c) 2015年 ranger. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
     UITextView *_myTextView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    _myTextView = [[UITextView alloc]initWithFrame:CGRectMake(0.0, (self.view.frame.size.height-80.0)/2.0, self.view.frame.size.width, 80.0)];
    _myTextView.font = [UIFont systemFontOfSize:15.0];
    _myTextView.textAlignment = NSTextAlignmentCenter;
    _myTextView.textColor = [UIColor blackColor];
    [self.view addSubview:_myTextView];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    //设置URL
    NSURL *url=[NSURL URLWithString:@"http://m.weather.com.cn/data/101010100.html"];
    //设置请求
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    //接收数据
    NSData *responseData=[NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    //解析数据
    NSDictionary *weatherDic = [NSJSONSerialization JSONObjectWithData:responseData options:NSJSONReadingMutableLeaves error:nil];
    //展示结果
    NSDictionary *weatherResult= [weatherDic objectForKey:@"weatherinfo"];
    _myTextView.text= [NSString stringWithFormat:@"今天是 %@  %@  %@  的天气状况：温度%@  %@  %@",[weatherResult objectForKey:@"date_y"],[weatherResult objectForKey:@"week"],[weatherResult objectForKey:@"city"], [weatherResult objectForKey:@"temp1"],[weatherResult objectForKey:@"weather1"],[weatherResult objectForKey:@"index_ls"]];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
