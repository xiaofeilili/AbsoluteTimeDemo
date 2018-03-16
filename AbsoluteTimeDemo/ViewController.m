//
//  ViewController.m
//  AbsoluteTimeDemo
//
//  Created by 李晓飞 on 2018/3/16.
//  Copyright © 2018年 xiaofei. All rights reserved.
//  计算耗时函数  CFAbsoluteTimeGetCurrent()  获取当前时间

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view, typically from a nib.
    
    CFAbsoluteTime startTime = CFAbsoluteTimeGetCurrent();
    
    // 耗时内容
    for (NSInteger i=0; i<10000; i++) {
        NSLog(@"%li", i);
    }
    
    CFAbsoluteTime endTime = CFAbsoluteTimeGetCurrent();
    CFAbsoluteTime useTime = endTime - startTime;
    NSLog(@"This operation took %f ms", useTime * 1000.0);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
