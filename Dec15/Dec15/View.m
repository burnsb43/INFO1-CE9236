//
//  View.m
//  Dec15
//
//  Created by Barbara Burns on 12/15/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "View.h"
#import "TableViewController.h"

@implementation View

- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor grayColor];
		button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
        
		//Center the button in the view.
		CGRect b = self.bounds;
		CGSize s = CGSizeMake(200, 40);	//size of button
        
		button.frame = CGRectMake(
                                  b.origin.x + (b.size.width - s.width) / 2,
                                  b.origin.y + (b.size.height - s.height) / 4,
                                  s.width,
                                  s.height
                                  );
        
		[button setTitleColor: [UIColor redColor] forState: UIControlStateNormal];
		[button setTitle: @"Call Barbara" forState: UIControlStateNormal];
        
        //[button addTarget: [UIApplication sharedApplication].delegate 
        //          action: @selector(touchUpInside:) 
        //forControlEvents: UIControlEventTouchUpInside
        //];
        [button addTarget: self
                   action: @selector(touchUpInside:) 
         forControlEvents: UIControlEventTouchUpInside
         ];
		[self addSubview: button];
        
        
        // Settings Button
        button2 = [UIButton buttonWithType: UIButtonTypeRoundedRect];
        
		//Center the button in the view.
	 	CGRect b2 = self.bounds;
	 	CGSize s2 = CGSizeMake(100, 20);	//size of button
        
		// will put the button in the lover right corner of the screen
        button2.frame = CGRectMake(
                                   b2.origin.x + (b2.size.width - s2.width)   ,
                                   b2.origin.y + (b2.size.height - s2.height)   ,
                                   s2.width,
                                   s2.height
                                   );
        
		[button2 setTitleColor: [UIColor grayColor] forState: UIControlStateNormal];
		[button2 setTitle: @"Preferences" forState: UIControlStateNormal];
        
        [button2 addTarget: self
                    action: @selector(loadTable:) 
          forControlEvents: UIControlEventTouchUpInside
         ];
        
		[self addSubview: button2];
        
        
        
	}
	return self;
}

- (void) touchUpInside: (id) sender {
	//The sender is the button that was pressed.
    
	NSLog(@"The \"%@\" button was pressed.",
		  [sender titleForState: UIControlStateNormal]);
    
	
    NSURL *url = [NSURL URLWithString: @"tel://12126635640"];
    UIApplication *application = [UIApplication sharedApplication];
    
    if (![application canOpenURL: url]) {
        NSLog(@"Can't open url %@.", url);
        
    }
    
    if (![application openURL: url]) {
        NSLog(@"failed to open URL %@", url);
    }
    
}

- (void) loadTable: (id) sender {
    
    NSLog(@"The \"%@\" button was pressed.", [sender titleForState: UIControlStateNormal]);
    
    
    //self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	// Override point for customization after application launch.
	self.window.rootViewController = [[TableViewController alloc] initWithStyle: UITableViewStylePlain];
	[self.window makeKeyAndVisible];
	//return YES;
    
}







/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void) drawRect: (CGRect) rect
 {
 // Drawing code
 }
 */


@end
