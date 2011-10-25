//
//  Rowan2AppDelegate.h
//  Rowan2
//
//  Created by Barbara Burns on 10/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;

@interface Rowan2AppDelegate : NSObject <UIApplicationDelegate> {
    View *view;
    UIWindow *_window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end
