//
//  AppDelegate.m
//  gamedemo
//
//  Created by JanyGee on 2020/6/16.
//  Copyright © 2020 Octopus. All rights reserved.
//

#import "AppDelegate.h"
#import <ZYWebGameKit/ZYWebGameKit-Swift.h>
#import <ZYOtherLoginKit/ZYOtherLoginKit.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [ZYWebGameKit initWithAppKey:@"CC45F95C8BE309871A96E478F865A4B2" appId:@"10055" channelId:@"900035" success:^(BOOL state) {
        NSLog(@"初始化成功----%d", state);//yes : 国内， no ： 海外
    } fail:^{
        NSLog(@"初始化失败");
    }];
    
    [[ZYGameFB shareFacebook] initWithAppID:@"facebook后台获取" application:application options:launchOptions];
    [[ZYGameGoogle shareGoogle] initWithClientID:@"google后台获取"];
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
