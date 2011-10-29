//
//  Rowan10AppDelegate.h
//  Rowan10
//
//  Created by Barbara Burns on 10/29/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>   // needed for AVAudio Player
@class View;

@interface Rowan10AppDelegate : UIResponder <UIApplicationDelegate> {
    View *view;
    UIWindow *_window;
    AVAudioPlayer *player;
}

@property (strong, nonatomic) UIWindow *window;

@end
