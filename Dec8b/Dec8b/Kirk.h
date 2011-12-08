//
//  Kirk.h
//  Dec8
//
//  Created by Barbara Burns on 12/7/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Dec8bViewController;

@interface Kirk : UIView  {
    UIButton *button;
    Dec8bViewController *dec8bViewController;
}
- (id) initWithFrame: (CGRect) frame controller: (Dec8bViewController   *) c;
@end
