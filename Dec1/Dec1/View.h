//
//  View.h
//  Dec1
//
//  Created by Barbara Burns on 11/30/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface View : UIView {
    UIView *earth;
    UIView *end;
    UIView *ball;
    CGFloat dx, dy; // direction and speed of ball's motion
  
}

 


- (void) move: (CADisplayLink *) displayLink;
@end
