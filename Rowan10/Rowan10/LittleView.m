//
//  LittleView.m
//  Rowan10
//
//  Created by Barbara Burns on 10/29/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "LittleView.h"

@implementation LittleView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
      //  self.backgroundColor = [UIColor yellowColor];
        self.backgroundColor = [UIColor colorWithRed:168/255 green:100/255 blue:168/255 alpha:.75];   // cyan
        
    }
    return self;
}

 
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
   // UIFont *font = [UIFont systemFontOfSize: 20];
   // [@"Hello!" drawAtPoint:CGPointZero withFont:font];
    UIImage *image = [UIImage imageNamed:@"rowan.jpg"];  // 100 x100
    if (image == nil) {
        NSLog(@"Could not find image rowan.jpg");
        return;
    }
    CGPoint a = CGPointMake(10, 10);
    [image drawAtPoint: a];

}
 

@end
