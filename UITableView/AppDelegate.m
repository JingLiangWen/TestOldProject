//
//  AppDelegate.m
//  UITableView
//
//  Created by Kenshin Cui on 14-3-1.
//  Copyright (c) 2014年 Kenshin Cui. All rights reserved.
//

#import "AppDelegate.h"
#import "KCMainViewController.h"
#import "KCStatusCellViewController.h"
#import "KCContactViewController.h"
#import "KCContactSearchViewController.h"
#import "KCContactTableViewController.h"
#import "KCContactTableViewControllerWithUISearchDisplayController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
            

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    //[[UINavigationBar appearance] setTintColor:[UIColor yellowColor]];
    
//    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent animated:YES];
//    [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationFade];

//    [[UIApplication sharedApplication] setStatusBarStyle: UIStatusBarStyleBlackOpaque];

//    [[UIApplication sharedApplication] setStatusBarStyle: UIStatusBarStyleBlackOpaque];

    self.window=[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].applicationFrame];
    self.window.backgroundColor=[UIColor whiteColor];
    
    
    KCContactTableViewController *mainController=[[KCContactTableViewController alloc]init];
    
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:mainController];
        
    self.window.rootViewController=nav;
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
