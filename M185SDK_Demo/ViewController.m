//
//  ViewController.m
//  M185SDK_Demo
//
//  Created by 燚 on 2018/7/19.
//  Copyright © 2018年 Sans. All rights reserved.
//

#import "ViewController.h"
#import "SDKHandler.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    //zai tianji adslf a

    
}

- (IBAction)login:(id)sender {
    [SDKHandler login];
}
- (IBAction)logout:(id)sender {
    [SDKHandler logOut];
}

- (IBAction)payStart:(id)sender {
    M185PayConfig *config = [M185PayConfig new];
    config.serverID = @"1";
    config.serverName = @"搞什么";
    config.productID = @"1";
    config.productName = @"飞龙在天";
    config.productDesc = @"这样总行了吧";
    config.roleName = @"风云天下";
    config.roleID = @"2";
    config.roleLevel = @"99";
    config.amount = @"1";
    config.extension = @"extension";
    [SDKHandler pay:config];
}
- (IBAction)submitData:(id)sender {
    M185SubmitData *data = [M185SubmitData new];
    data.type = M185SubmitTypeUpgradeLevel;
    data.serverID = @"66";
    data.serverName = @"火影忍者";
    data.roleName = @"血饮狂刀";
    data.roleID = @"77";
    data.roleLevel = @"99";
    data.moneyNumber = @"82376";
    data.vipLevel = @"20";
    [SDKHandler submitData:data];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
