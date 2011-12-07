//
//  View.m
//  Dec8a
//
//  Created by Barbara Burns on 12/6/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "View.h"

@implementation View
 @synthesize  picture;
 

- (id)initWithFrame:(CGRect)frame controller: (MainViewController *)
mainViewController {
    
                                            
 
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
         self.backgroundColor = [UIColor whiteColor];
        
    }
    return self;
}

 
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
  
//NSUInteger *number = 2 ;
    
    if (picture ==   0  ) {
         
     UIImage *image = [UIImage imageNamed: @"kirk.jpg"];   // 100 by 100
  
    if (image == nil) {
        
        NSLog(@"could not find the image");
        return;
    }
    
    // upper left corner of image
    CGPoint a = CGPointMake(  0,  0);
        
    [image drawAtPoint:a];
   }
  
    
    if (picture ==  2  ) {
        
        UIImage *image = [UIImage imageNamed: @"earth.jpg"];   // 100 by 100
        
        if (image == nil) {
            
            NSLog(@"could not find the image");
            return;
        }
        
        // upper left corner of image
        CGPoint a = CGPointMake( 50, 50);
        
        [image drawAtPoint:a];
    }

    
    
}
 

@end
