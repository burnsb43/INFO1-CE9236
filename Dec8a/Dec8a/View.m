//
//  View.m
//  Dec8a
//
//  Created by Barbara Burns on 12/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
 
controller: (MainViewController *) mainViewController 
image: (NSString *) i {
    
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor blackColor];
        image = i;
        
    }
    return self;
}

 
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
 UIImage *i = [UIImage imageNamed: image];    
 
 if (image == nil) {
 NSLog(@"could not find the image %@", image);
 return;
 }
 
 // upper left corner of image
 [i drawAtPoint: CGPointZero];

}
 

@end
