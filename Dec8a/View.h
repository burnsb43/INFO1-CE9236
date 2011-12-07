//
//  View.h
//  Dec8a
//
//  Created by Barbara Burns on 12/6/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MainViewController;


@interface View : UIView{
     NSArray *names;
    NSUInteger *picture;
  
}

- (id) initWithFrame: (CGRect) frame controller: (MainViewController *) mainViewController;  
@property NSUInteger *picture;
 
@end
