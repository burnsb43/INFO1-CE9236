//
//  Dec15ViewController.m
//  Dec15
//
//  Created by Barbara Burns on 12/15/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Dec15ViewController.h"
#import "View.h"

@implementation Dec15ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void) loadView
{
	CGRect frame = [UIScreen mainScreen].applicationFrame;
	self.view = [[View alloc] initWithFrame: frame];  
 }


#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
