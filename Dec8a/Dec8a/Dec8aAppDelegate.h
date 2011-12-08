//
//  Dec8aAppDelegate.h
//  Dec8a
//
//  Created by Barbara Burns on 12/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Dec8aViewController;


@interface Dec8aAppDelegate : UIResponder <UIApplicationDelegate>  {
    NSArray *names;
	NSArray *images;
    NSArray *comments;
    NSMutableArray *visited;
    UIWindow *_window;
}

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) NSArray *names;
@property (strong, nonatomic) NSArray *comments;

@end
