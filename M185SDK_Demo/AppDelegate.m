//
//  AppDelegate.m
//  M185SDK_Demo
//
//  Created by 燚 on 2018/7/19.
//  Copyright © 2018年 Sans. All rights reserved.
//

#import "AppDelegate.h"
#import <M185SDK/M185SDK.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

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




