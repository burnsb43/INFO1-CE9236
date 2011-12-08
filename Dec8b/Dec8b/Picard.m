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
          self.backgroundColor = [UIColor colorWithRed: 0.0 green: 1.02 blue: 1.23 alpha: 0.7];
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
    CGPoint a = CGPointMake(  0,  0);
    
    [image drawAtPoint:a];
}

 
 

@end
