//
//  View.m
//  Dec1
//
//  Created by Barbara Burns on 11/30/11.
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
      

        // Create the earth  (hidden behind image)
        frame = CGRectMake (10, 320, 100, 100);
        earth = [[UIView alloc] initWithFrame: frame];
        earth.backgroundColor = [UIColor clearColor];
                [self addSubview: earth];
     

        
        // create the ball in the upper left corner of this view
        frame = CGRectMake(300, 420, 20, 20 );
        ball = [[UIView alloc] initWithFrame:   frame];
        ball.backgroundColor = [UIColor whiteColor];
        [self addSubview: ball];
        
        // Ball initially moves to lower right
        dx = 1;
        dy = 1;
        
        
        // Create the end of the world
        frame = CGRectMake (0, 0, 340, 460);
        end = [[UIView alloc] initWithFrame: frame];
        end.backgroundColor = [UIColor clearColor];
     
        [self addSubview: end];

        
    }
    return self;
}


// Change the ball's direction of motion,
// if necessary to avoid an impending collision

- (void) bounce {
    // where the ball would be if its horizontal motion were allowed 
    // to continue for one more move
    CGRect horizontal = ball.frame;
    horizontal.origin.x += dx;
    
    // where the ball would be if its vertical motion were allowed
    // to continue for one more move
    CGRect vertical = ball.frame;
    vertical.origin.y += dy;
    
    // Ball must remain inside self.bounds
    if (!CGRectEqualToRect(horizontal, CGRectIntersection(horizontal, self.bounds))) {
        // ball will bound off left or right edge of view
        dx = -dx;
    }
    
    if (!CGRectEqualToRect(vertical, CGRectIntersection(vertical, self.bounds))) {
        dy = -dy;
    }
    
    // if the ball is not currently intersecting the paddle,
    //If the ball is not currently intersecting the paddle,
	if (!CGRectIntersectsRect(ball.frame, earth.frame)) {
		
		//but if the ball will intersect the paddle on the next move,
		if (CGRectIntersectsRect(horizontal, earth.frame)) {
			dx = -dx;
              ball.backgroundColor = [UIColor blueColor];
            end.backgroundColor = [UIColor blackColor];
  

            
		}
		
		if (CGRectIntersectsRect(vertical, earth.frame)) {
			dy = -dy;
              ball.backgroundColor = [UIColor blueColor];
            end.backgroundColor = [UIColor blackColor];
		}
	}
    
    // if the ball is currently intersecting the earth -- DO SOMETHING
    if (CGRectIntersectsRect(ball.frame, earth.frame)) {
        // Create the end   
       ball.backgroundColor = [UIColor blueColor];
  
    }    
}


- (void) touchesMoved: (NSSet *) touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
	CGPoint p = [touch locationInView: self];
	CGFloat y = p.y;
	
	//Don't let the paddle move off the bottom or top of the View.
	CGFloat half = earth.bounds.size.height / 2;
	y = MIN(y, self.bounds.size.height - half); //don't let y get too big
	y = MAX(y, half);                         //don't let y get too small
	
	earth.center = CGPointMake(earth.center.x, y);
	[self bounce];
    
}

- (void) move: (CADisplayLink *) displayLink {
	//NSLog(@"%.15g", displayLink.timestamp);	//15 significant digits
	
	ball.center = CGPointMake(ball.center.x + dx, ball.center.y + dy);
    
    
	[self bounce];
}
 
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect
 {
 // Drawing code
 // create the earth image   (The image is colocated with the earth uiview above.
 UIImage *earth2 = [UIImage imageNamed: @"earth.jpg"];	//100 by 100
 if (earth2 == nil) {
 NSLog(@"could not find the image");
 return;
 }
 
 //upper left corner of image
 CGPoint point = CGPointMake(10,340);
 
 
 [earth2 drawAtPoint: point];
 }

 

@end
