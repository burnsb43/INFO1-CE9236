//
//  Dec1ViewController.m
//  Dec1
//
//  Created by Barbara Burns on 11/30/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Dec1ViewController.h"
#import "View.h"

@implementation Dec1ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void) loadView
{
    CGRect frame = [UIScreen mainScreen].applicationFrame;
    self.view = [[View alloc] initWithFrame: frame];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    displayLink = [CADisplayLink displayLinkWithTarget: self.view selector: @selector(move:)
                   ];
    
    // call move: evertime the display is refreshed
    displayLink.frameInterval = 4;
    NSRunLoop *loop = [NSRunLoop currentRunLoop];
    [displayLink addToRunLoop:   loop forMode: NSDefaultRunLoopMode];
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

- (void) dealloc {
    NSRunLoop *loop = [NSRunLoop currentRunLoop];
    [displayLink removeFromRunLoop: loop forMode:NSDefaultRunLoopMode];
}
@end
