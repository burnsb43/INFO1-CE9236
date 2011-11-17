//
//  View.m
//  Nov17
//
//  Created by Barbara Burns on 11/17/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor blackColor];
		
		// code to draw switch
        //Do not specify a size for the switch.
		//Let the switch assume its own natural size.
		mySwitch = [[UISwitch alloc] initWithFrame: CGRectZero];
		if (mySwitch == nil) {
			return nil;
		}
        
		//Call the valueChanged: method of the application delegate
		//when the value of the switch is changed.
		
		[mySwitch addTarget: [UIApplication sharedApplication].delegate
                     action: @selector(valueChanged:)
           forControlEvents: UIControlEventValueChanged
         ];
		
		//Center the switch in the SwitchView.
		CGRect b = self.bounds;
        
		mySwitch.center = CGPointMake(
                                      b.origin.x + b.size.width / 2,
                                      b.origin.y + b.size.height / 4
                                      );
        
		mySwitch.on = NO;	//the default
		[self addSubview: mySwitch];
        
        
        // code to draw  button
        button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
        
		//Center the button in the view.
		CGSize s2 = CGSizeMake(200, 40);	//size of button
		CGRect b2 = self.bounds;
        
		button.frame = CGRectMake(
                                  b2.origin.x + (b2.size.width - s2.width) / 2,
                                  b2.origin.y + (b2.size.height - s2.height) / 2,
                                  s2.width,
                                  s2.height
                                  );
        
		[button setTitleColor: [UIColor blackColor]
                     forState: UIControlStateNormal];
        
		[button setTitle: @"Star Ship Enterprise"
                forState: UIControlStateNormal];
        
		[button addTarget: [UIApplication sharedApplication].delegate
                   action: @selector(touchUpInside:)
         forControlEvents: UIControlEventTouchUpInside
         ];
		
		[self addSubview: button];

}
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
