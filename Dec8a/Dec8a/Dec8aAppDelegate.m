//
//  Dec8aAppDelegate.m
//  Dec8a
//
//  Created by Barbara Burns on 12/6/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Dec8aAppDelegate.h"

#import "MainViewController.h"

@implementation Dec8aAppDelegate

@synthesize window = _window;
@synthesize names;
@synthesize picture;



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch
	names = [NSArray arrayWithObjects:
             @"Kirk",
             @"Picard",
             @"Janeway",
             @"Archer",
             nil
             ];
    
    
    MainViewController *firstController = [[MainViewController alloc] initWithTitle: [names objectAtIndex: 0]];
    
    

    self.window = [[UIWindow alloc] initWithFrame: [UIScreen mainScreen].bounds];
    // Override point for customization after application launch.
                   
    //self.viewController = [[Dec8aViewController alloc] initWithNibName:@"Dec8aViewController" bundle:nil];
    
        self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:firstController];  
        visited = [NSMutableArray arrayWithObject:  firstController];
                   [self.window makeKeyAndVisible];           
    return YES;
}
                   
                   - (void) nextCaptain {
                       UINavigationController *navigationController =
                       (UINavigationController *)self.window.rootViewController;
                  
                       NSUInteger picture = navigationController.viewControllers.count;
                       
                       NSUInteger i = navigationController.viewControllers.count;
                       if (i == names.count) {
                           //We are currently visiting the last station, and can go no further.
                           return;
                       }
                       
                       if (visited.count <= i) {
                           //This captain is being visited for the first time.
                           [visited addObject:
                            [[MainViewController alloc] initWithTitle: [names objectAtIndex: i]]
                            ];
                           
                       }
                       
                       [navigationController pushViewController: [visited objectAtIndex: i] animated: YES];
                   }
- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
