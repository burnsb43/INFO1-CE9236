//
//  Dec8cAppDelegate.h
//  Dec8c
//
//  Created by Barbara Burns on 12/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AVFoundation/AVAudioPlayer.h"


@class Dec8cViewController;

@interface Dec8cAppDelegate : UIResponder <UIApplicationDelegate, AVAudioPlayerDelegate>  {
    NSArray *a;
    UITabBarController *controller;
    UIWindow *window;
    AVAudioPlayer *player;
}
@property (strong, nonatomic) UIWindow *window;

//@property (strong, nonatomic) Dec8cViewController *viewController;

@end
