//
//  Dec1AppDelegate.h
//  Dec1
//
//  Created by Barbara Burns on 11/30/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h> // needed for MPMovePlayerController

@class Dec1ViewController;

@interface Dec1AppDelegate : UIResponder <UIApplicationDelegate> {
      MPMoviePlayerController *controller;
    UIWindow *_window;
}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) Dec1ViewController *viewController;

@end
