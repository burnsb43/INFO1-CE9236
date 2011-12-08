//
//  Picard.m
//  Dec8
//
//  Created by Barbara Burns on 12/7/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Picard.h"

@implementation Picard

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
           self.backgroundColor = [UIColor blackColor]; 
    }
    return self;
}

 
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    UIImage *image = [UIImage imageNamed: @"picard.jpg"];   // 100 by 100
    
    if (image == nil) {
        
        NSLog(@"could not find the image");
        return;
    }
    
    // upper left corner of image
    CGPoint a = CGPointMake(  20,  0);
    
    [image drawAtPoint:a];
    
    // Text
    UIFont   *f = [UIFont systemFontOfSize: 32.0];
    
    NSString *s = NSLocalizedString(@"The Best", @"displayed with drawAtPoint:");
    
    // to change font to grey
    CGContextRef c = UIGraphicsGetCurrentContext();
    CGContextSetRGBFillColor(c, .6549, .6705, .6745, 1.0);
    
    CGPoint p = CGPointMake(90,  300);      
    [s drawAtPoint: p withFont: f];
}

 
 

@end
