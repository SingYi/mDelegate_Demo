//
//  ViewController.m
//  M185SDK_Demo
//
//  Created by 燚 on 2018/7/19.
//  Copyright © 2018年 Sans. All rights reserved.
//

#import "ViewController.h"
#import <M185SDK/M185SDK.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    //zai tianji adslf a


    [[M185SDKManager sharedManager] sayHi];


    M185SDK.interesing = @"123";

    NSLog(@"   ---->  %@",M185SDK.interesing);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
