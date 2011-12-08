//
//  MainViewController.h
//  Dec8a
//
//  Created by Barbara Burns on 12/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController {
    NSString *image;
    NSString *comment;
}
- (id) initWithTitle: (NSString *) title image: (NSString *) i;

@property (strong, nonatomic) NSArray *names;


@end
