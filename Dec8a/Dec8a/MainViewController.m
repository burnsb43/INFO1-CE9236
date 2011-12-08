//
//  MainViewController.m
//  Dec8a
//
//  Created by Barbara Burns on 12/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"
#import "Dec8aAppDelegate.h"
#import "View.h"

@implementation MainViewController
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
 */
- (id) initWithTitle: (NSString *) title image: (NSString *) i
{
	self = [super initWithNibName: nil bundle: nil];
	if (self) {
		// Custom initialization
		self.title = title;
		image = i;
        
		Dec8aAppDelegate *applicationDelegate = [UIApplication sharedApplication].delegate;
        
		//Every captain except the first one has a "Next Captain" button.
		if ([applicationDelegate.names indexOfObject: title] < applicationDelegate.names.count - 1) {
            
			self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]
                                                      initWithTitle: @"Next Captain"
                                                      style: UIBarButtonItemStylePlain
                                                      target: [UIApplication sharedApplication].delegate
                                                      action: @selector(nextCaptain)
                                                      ];
		}
	}
	return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

 
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
    CGRect frame = [UIScreen mainScreen].applicationFrame;
    self.view = [[View alloc] initWithFrame: frame controller: self image: image];
      
}
 

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
