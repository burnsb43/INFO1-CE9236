//
//  RowanAppDelegate.h
//  Rowan
//
//  Created by Barbara Burns on 10/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;

@interface RowanAppDelegate : NSObject <UIApplicationDelegate> {
    View *view;
    UIWindow *_window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end