//
//  View.h
//  Dec8a
//
//  Created by Barbara Burns on 12/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MainViewController;

@interface View : UIView {
    NSString *image;
}


- (id) initWithFrame: (CGRect) frame controller: (MainViewController *) mainViewController image: (NSString *) i;  

@end
