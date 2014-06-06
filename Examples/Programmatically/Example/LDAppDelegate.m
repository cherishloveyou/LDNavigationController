//
//  LDAppDelegate.m
//  Example
//
//  Created by Steven Mattera on 6/5/14.
//  Copyright (c) 2014 Lepidus Development, LLC. All rights reserved.
//

#import "LDAppDelegate.h"
#import "LDNavigationController.h"

@implementation LDAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window setBackgroundColor:[UIColor blackColor]];
    
    UIViewController * viewController = [[UIViewController alloc] init];
    [[viewController view] setBackgroundColor:[UIColor whiteColor]];
    
    LDNavigationController * navController = [[LDNavigationController alloc] initWithRootViewController:viewController];
    [[navController navigationBar] setBarTintColor:[UIColor colorWithRed:1.f green:68.f/255.f blue:68.f/255.f alpha:1.f]];
    [navController setStatusBarStyle:LDStatusBarStyleLightContent];
    [navController setStatusBarColor:[UIColor colorWithRed:204.f/255.f green:0.f blue:0.f alpha:1.0f]];
    [navController setStatusBarHidden:NO];
    [navController setUseTopViewControllerStatusBarStyle:NO];
    [navController setUseRootViewControllerStatusBarStyle:NO];
    
    [self.window setRootViewController:navController];
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
