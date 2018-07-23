//
//  SDKHandler.m
//  M185SDK_Demo
//
//  Created by Sans on 2018/7/23.
//  Copyright © 2018年 Sans. All rights reserved.
//

#import "SDKHandler.h"

static SDKHandler *_instance = nil;
@implementation SDKHandler

+ (SDKHandler *)sharedHandeler {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (!_instance) {
            _instance = [[SDKHandler alloc] init];
        }
    });
    return _instance;
}

+ (void)login {
    [M185SDKManager login];
}

+ (void)logOut {
    [M185SDKManager logOut];
}

+ (void)showUserCenter {
    [M185SDKManager showUserCenter];
}

+ (void)submitData:(M185SubmitData *)data {
    [M185SDKManager submitDataWith:data];
}

+ (void)pay:(M185PayConfig *)config {
    [M185SDKManager payStartWithConfig:config];
}


#pragma mark - call back

- (void)M185SDKCustomCallBackWithInformation:(id _Nullable)info {
    
}

- (void)M185SDKInitCallBackWithSuccess:(BOOL)success Information:(NSDictionary * _Nonnull)dict {
    if (success) {
        NSLog(@"demo init success == %@",dict);
    }
}

- (void)M185SDKLogOutCallBackWithSuccess:(BOOL)success Information:(NSDictionary * _Nullable)dict {
    if (success) {
        NSLog(@"demo logout success == %@",dict);
    }
}

- (void)M185SDKLoginCallBackWithSuccess:(BOOL)success Information:(NSDictionary * _Nonnull)dict {
    if (success) {
        NSLog(@"demo lgoin success == %@",dict);
    }
}

- (void)M185SDKRechargeCallBackWithSuccess:(BOOL)success Information:(NSDictionary * _Nonnull)dict {
    success ? NSLog(@"demo recharge success") : NSLog(@"demo recharge failure");
    NSLog(@"demo recharge result == %@",dict);
}




@end





