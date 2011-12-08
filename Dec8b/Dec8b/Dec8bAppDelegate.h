//
//  Dec8bAppDelegate.h
//  Dec8b
//
//  Created by Barbara Burns on 12/7/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AVFoundation/AVAudioPlayer.h"

@class Dec8bViewController;

@interface Dec8bAppDelegate : UIResponder <UIApplicationDelegate, AVAudioPlayerDelegate>  {
    NSArray *a;
    UITabBarController *controller;
    UIWindow *window;
    AVAudioPlayer *player;
}

@property (strong, nonatomic) UIWindow *window;

//@property (strong, nonatomic) Dec8bViewController *viewController;

@end
