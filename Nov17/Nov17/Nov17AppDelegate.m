//
//  Nov17AppDelegate.m
//  Nov17
//
//  Created by Barbara Burns on 11/17/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Nov17AppDelegate.h"
#import "view.h"

@implementation Nov17AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    // Code for Audio Player
    NSBundle *bundle = [NSBundle mainBundle];
	NSLog(@"bundle.bundelPath == \"%@\"", bundle.bundlePath);
    
	NSString *filename = [bundle pathForResource: @"startrek" ofType: @"mp3"];
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
    
    
    // Code for Video Player
    NSBundle *bundle2 = [NSBundle mainBundle];
	if (bundle2 == nil) {
		NSLog(@"Could not access main bundle.");
		return YES;
	}
    
	NSString *filename2 = [bundle pathForResource: @"StarTrek" ofType: @"m4v"];
	if (filename2 == nil) {
		NSLog(@"could not find file StarTrek.m4v");
		return YES;
	}
    
	NSURL *url2 = [NSURL fileURLWithPath: filename2];
	if (url2 == nil) {
		NSLog(@"could not create URL for file %@", filename2);
		return YES;
	}
    
	controller = [[MPMoviePlayerController alloc] init];
	if (controller == nil) {
		NSLog(@"could not create MPMoviePlayerController");
		return YES;
	}
    
	[controller setContentURL: url2];
	controller.scalingMode = MPMovieScalingModeNone;
	controller.controlStyle = MPMovieControlStyleFullscreen;
	controller.movieSourceType = MPMovieSourceTypeFile; //vs.stream
    
	NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
	
	[center
     addObserver: self
     selector: @selector(playbackDidFinish:)
     name: MPMoviePlayerPlaybackDidFinishNotification
     object: controller
     ];

    
    // Load screens
    
    UIScreen *screen = [UIScreen mainScreen];
    view = [[View alloc] initWithFrame: screen.applicationFrame];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window addSubview: view];
    [self.window makeKeyAndVisible];
    return YES;
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

#pragma mark -
#pragma mark Application delegate is target of button for videa

- (void) touchUpInside: (id) sender {
    // sender is the button
    controller.view.frame = view.frame;
    [view removeFromSuperview];
	[self.window addSubview: controller.view];
    [controller play];
    
}

#pragma mark -
#pragma mark Application delegate is observer of MPMoviePlayerController

- (void) playbackDidFinish: (NSNotification *) notification {
    // notification object is the movie player controller
    [controller.view removeFromSuperview];
    [UIApplication sharedApplication].statusBarHidden = NO;
    [self.window addSubview: view];
}

@end
