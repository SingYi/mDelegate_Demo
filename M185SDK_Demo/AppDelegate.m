//
//  AppDelegate.m
//  M185SDK_Demo
//
//  Created by 燚 on 2018/7/19.
//  Copyright © 2018年 Sans. All rights reserved.
//

#import "AppDelegate.h"
#import "SDKHandler.h"


 #define RH_AppID @"30"
 #define RH_ChannelID @"106"
 #define RH_AppKey @"8fc28b4a90f32377520378f97f324cab"
 #define RH_AppSecret @"079449acd93b64a244e534a63a550528"
 
 #define AppID @"1003"
 #define ClientKey @"8f5839352462bfe0a4424bf53067e34d"



@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    [SY185SDK new];
    [M185SDK initWithRH_AppID:RH_AppID WithRH_AppKey:RH_AppKey WithRH_ChannelIDL:RH_ChannelID WithAppID:AppID WithClientKey:ClientKey WithCallBackDelegate:[SDKHandler sharedHandeler]];
    [M185SDK application:application didFinishLaunchingWithOptions:launchOptions];

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    [M185SDK applicationWillResignActive:application];
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    [M185SDK applicationDidEnterBackground:application];
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    [M185SDK applicationWillEnterForeground:application];
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    [M185SDK applicationDidBecomeActive:application];
}

- (void)applicationWillTerminate:(UIApplication *)application {
    [M185SDK applicationWillTerminate:application];
}

- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {
    [M185SDK application:application didRegisterForRemoteNotificationsWithDeviceToken:deviceToken];
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(nonnull NSDictionary *)userInfo {
    [M185SDK application:application didReceiveRemoteNotification:userInfo];
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler {
    [M185SDK application:application didReceiveRemoteNotification:userInfo];
}

- (void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification {
    [M185SDK application:application didReceiveLocalNotification:notification];
}


- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey, id> *)options {
    return [M185SDK application:app openURL:url options:options];
}

- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url {
    return [M185SDK application:application handleOpenURL:url];
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    return [M185SDK application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
}




@end




