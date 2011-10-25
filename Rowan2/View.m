//
//  View.m
//  Rowan2
//
//  Created by Barbara Burns on 10/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor colorWithRed:0 green:.749 blue:.9529 alpha:.75];
        

    }
    return self;
}

 
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    // This is the text - "This is Rowan - displays at bottom of screen in center"
    UIFont *f = [UIFont systemFontOfSize: 32.0];
    //    NSString *s = @"This is Rowan";
    
    NSString *s = NSLocalizedString(@"Info", @"displayed with drawAtPoint:");
    
    // to change font to grey
    CGContextSetRGBFillColor(UIGraphicsGetCurrentContext(), .6549, .6705, .6745, 1.0);
    
    // To print text centered at bottom of screen
    //  CGSize size = [s sizeWithFont:f];
    CGSize size = self.bounds.size;
    CGContextRef c = UIGraphicsGetCurrentContext();
    CGContextTranslateCTM(c, size.width / 2, size.height / 2); //origin at center of view
	//CGContextScaleCTM(c, 1, -1);                               //make Y axis point up - - This reverses the text image
    
    
    //CGPoint p = CGPointMake(0.0, 0.0);
    CGPoint p = CGPointMake(-100,  180);  // Near the bottom - how do I find out the bottom?
    
    [s drawAtPoint: p withFont: f];
    
    
    
    // This is the rectangle that will be rotated
    // 	CGSize size = self.bounds.size;
	CGFloat min = MIN(size.width, size.height);
	CGFloat longSide = min * 15 / 16;
	CGFloat shortSide = longSide /15;
    
    //CGContextRef c = UIGraphicsGetCurrentContext();
	CGContextBeginPath(c);
    
	// CGContextTranslateCTM(c, size.width / 2, size.height / 2); //origin at center of view
	// CGContextScaleCTM(c, 1, -1);                               //make Y axis point up
    
	CGRect horizontal = CGRectMake(-longSide / 2, -shortSide / 2, longSide, shortSide);
	CGContextAddRect(c, horizontal);
	CGContextRotateCTM(c, 90 * M_PI / 180);	//90 degrees clockwise
	CGContextAddRect(c, horizontal);
    
    CGContextRotateCTM(c, 45 * M_PI / 180);	//45 degrees clockwise
	CGContextAddRect(c, horizontal);
    CGContextRotateCTM(c, 90 * M_PI / 180);	//90 degrees clockwise
	CGContextAddRect(c, horizontal);
    
	CGContextSetRGBFillColor(c, .6549, .6705, .6745, 1.0);
	CGContextFillPath(c);
    
    //CGContextTranslateCTM(c, size.width / 2, size.height / 2); //origin at center of view
    
    
    
    // This is the picture of Rowan
    
    UIImage *image = [UIImage imageNamed:@"rowan.jpg"];   // 100 by 100
    if (image == nil) {
        
        NSLog(@"could not find the image");
        return;
    }
    CGContextRotateCTM(c, -225 * M_PI / 180);	//45 degrees counter clockwise    
    // upper left corner of image
    CGPoint a = CGPointMake(-50,-50);
    
    
    [image drawAtPoint:a];
    

    
}
 

@end
