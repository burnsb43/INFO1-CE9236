//
//  Dec8bAppDelegate.m
//  Dec8b
//
//  Created by Barbara Burns on 12/7/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Dec8bAppDelegate.h"

#import "Dec8bViewController.h"
#import "Home.h"
#import "Kirk.h"
 #import "Picard.h"
 #import "Janeway.h"
 #import "Archer.h"

@implementation Dec8bAppDelegate

@synthesize window = _window;
//@synthesize viewController = _viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{ 
    
    // Code for Audio Player
    NSBundle *bundle = [NSBundle mainBundle];
	NSLog(@"bundle.bundelPath == \"%@\"", bundle.bundlePath);
    
	NSString *filename = [bundle pathForResource: @"StarTrek" ofType: @"mp3"];
	NSLog(@"filename == \"%@\"", filename);
    
	NSURL *url = [NSURL fileURLWithPath: filename isDirectory: NO];
	NSLog(@"url == \"%@\"", url);
    
	NSError *error = nil;
	player = [[AVAudioPlayer alloc] initWithContentsOfURL: url error: &error];
    
	if (player == nil) {
		NSLog(@"could not initialize player:  %@", error);
	} else {
		player.volume = .5;		//the default
		player.numberOfLoops = -1;	//negative for infinite loop
		[player setDelegate: self];
		//mono or stereo
		NSLog(@"player.numberOfChannels == %u", player.numberOfChannels);
        
		if (![player prepareToPlay]) {
			NSLog(@"prepareToPlay failed");
		}
	}
    
    
    UIScreen *s = [UIScreen mainScreen];
    CGRect f = [s applicationFrame];
    
    a = [NSArray arrayWithObjects:
         
         [[Dec8bViewController alloc]
          initWithTitle: @"Home"
          badge:@"1"
          view: [[Home alloc] initWithFrame: f]
          ],
         
         [[Dec8bViewController alloc]
          initWithTitle: @"Kirk"
          badge:@"2"
          view: [[Kirk  alloc] initWithFrame: f]
          ],
      
         
         [[Dec8bViewController alloc]
          initWithTitle: @"Picard"
          badge:@"3"
          view: [[Picard alloc] initWithFrame: f]
          ],
         
         [[Dec8bViewController alloc]
          initWithTitle: @"Janeway"
          badge:@"4"
          view: [[Janeway alloc] initWithFrame: f]
          ],
         
         [[Dec8bViewController alloc]
          initWithTitle: @"Archer"
          badge:@"5"
          view: [[Archer alloc] initWithFrame: f]
          ],
        
         nil
         ];
    
    controller  = [[UITabBarController alloc] init];
    controller.viewControllers = a;
    
    window = [[UIWindow alloc] initWithFrame: s.bounds];
    [window addSubview: controller.view];
    [window makeKeyAndVisible];
}


- (void) valueChanged:(id)sender {
    UISwitch *s = sender;
    if (s.isOn) {
        // Switch has just been turned on
        if (![player play]) {
            NSLog(@"[player play] failed.");
        }
    } else {
        // switch has just been turned off
        NSLog(@"Paused at %g of %g seconds.", player.deviceCurrentTime, player.duration);
        [player pause];
    }
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
