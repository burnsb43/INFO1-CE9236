//
//  View.m
//  Rowan10
//
//  Created by Barbara Burns on 10/29/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "View.h"
#import "LittleView.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
         self.backgroundColor = [UIColor colorWithRed:0 green:.749 blue:.9529 alpha: 1];   // cyan
        
        
        CGFloat w = 120;  // width in pixels of little view
        CGFloat h = 120;  // height in pixels of little view
        CGRect b = self.bounds;
        
        CGRect f = CGRectMake(
               b.origin.x + (b.size.width - w) /2,
               b.origin.y + (b.size.height - h) /2,
               w,
               h               
        );
        littleView = [[LittleView alloc ] initWithFrame: f];
        [self addSubview: littleView];
        
        
    }
    return self;
}

- (void) touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event {
 
		         
        //Describe the animation itself.
            [UIView animateWithDuration:2.0
                   delay: 0.0
                   options: UIViewAnimationOptionCurveEaseOut
                             animations: ^{
                                 
                                
                                 //This little block describes what the animation should do
                                littleView.center = [[touches anyObject] locationInView:self];
                               [UIView setAnimationRepeatCount:10]; 
                                littleView.transform = CGAffineTransformMakeRotation(90 *M_PI /180);
                                littleView.transform = CGAffineTransformMakeRotation(180 *M_PI /180);
                           
                                littleView.transform = CGAffineTransformMakeRotation(270 *M_PI /180);
                                littleView.transform = CGAffineTransformMakeRotation(360 *M_PI /180);
                          
                                   
                             } 
                             completion: NULL             ];
             }
/*
// Image will be dragged, frame will turn yellow went starts to move, then turn back to dk blue when move complete
- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    littleView.backgroundColor = [UIColor yellowColor];
    }

- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView: self];
    littleView.center = point;    // Move the littleView to a new location
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    littleView.backgroundColor = [UIColor colorWithRed:168/255 green:100/255 blue:168/255 alpha:1];    
    
}
/*
 
 
 
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
