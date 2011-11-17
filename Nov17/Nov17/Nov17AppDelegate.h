//
//  Nov17AppDelegate.h
//  Nov17
//
//  Created by Barbara Burns on 11/17/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVAudioPlayer.h>
#import <MediaPlayer/MediaPlayer.h> // needed for MPMovePlayerController
@class View;

@interface Nov17AppDelegate : UIResponder <UIApplicationDelegate, AVAudioPlayerDelegate,  UIApplicationDelegate>  {
    AVAudioPlayer *player;
    MPMoviePlayerController *controller;
    View *view;
    UIWindow *_window;
}

- (void) valueChanged: (id) sender;

@property (strong, nonatomic) UIWindow *window;

@end
