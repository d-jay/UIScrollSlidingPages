//
//  TTAppDelegate.m
//  UITableViewZoomController
//
//  Created by Thomas Thorpe on 25/02/2013.
//  Copyright (c) 2013 Thomas Thorpe. All rights reserved.
//

#import "TTAppDelegate.h"

#import "TableViews/TabTwoViewController.h"
#import "TTViewController.h"

@interface TTAppDelegate(){
    UINavigationController *nc;
}

@end

@implementation TTAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    UIViewController *mainViewController;
    mainViewController = [[TTViewController alloc] init];
    [mainViewController setTitle:@"Page Slider"];
    
    nc = [[UINavigationController alloc] initWithRootViewController:mainViewController];
//    [nc setTitle:@"Page Slider"];
//    for (int i=0; i<100; i++) {
//        [self reloadSlider];
//    }
    
   
    self.window.rootViewController = nc;
    [self.window makeKeyAndVisible];
    
    UITapGestureRecognizer *gc = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(reloadSlider)];
    [self.window addGestureRecognizer:gc];
    
    return YES;
}


static int loadCount = 0;
- (void)reloadSlider{
    UIViewController *vc = [[TTViewController alloc] init];
    [nc setViewControllers:nil];
    [nc pushViewController:vc animated:NO];
    loadCount ++;
    [vc setTitle:[NSString stringWithFormat:@"Page Slider - %d", loadCount]];
//    [self  performSelector:@selector(reloadSlider) withObject:nil afterDelay:2.0];
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
}
*/

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
{
}
*/

@end
