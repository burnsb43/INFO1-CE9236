//
//  Rowan6AppDelegate.h
//  Rowan6
//
//  Created by Barbara Burns on 10/29/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;

@interface Rowan6AppDelegate : UIResponder <UIApplicationDelegate>{
    View *view;
    UIWindow *_window;
}


@property (strong, nonatomic) UIWindow *window;

@end
