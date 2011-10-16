//
//  HelloAppDelegate.h
//  Hello
//
//  Created by Barbara Burns on 10/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;

@interface HelloAppDelegate : NSObject <UIApplicationDelegate>
{
    View *view;
    UIWindow *_window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end
