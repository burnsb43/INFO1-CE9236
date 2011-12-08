//
//  Dec8cViewController.m
//  Dec8c
//
//  Created by Barbara Burns on 12/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Dec8cViewController.h"

@implementation Dec8cViewController

- (id) initWithTitle:  (NSString *) t badge:   (NSString *) b view: (UIView *) v {
    if (self = [super initWithNibName: nil bundle: nil]) {
        self.title = t;
        self.tabBarItem.badgeValue = b;
        self.view = v;
        
        
        //self.navigationItem.prompt = @"Welcome to";
       
        self.navigationItem.title = @"Captains of the Enterprise";
        /*
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]
                                                  initWithBarButtonSystemItem: UIBarButtonSystemItemDone
                                                  target: nil
                                                  action: NULL
                                                  ];
        */
    }
    return self;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
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
